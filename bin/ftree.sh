#!/usr/bin/env bash

# Set the default depth level
depth=1

# Parse command-line arguments
while getopts "L:" opt; do
  case ${opt} in
    L )
      depth=$OPTARG
      ;;
  esac
done

# Function to display the file tree recursively
display_tree() {
  local dir="$1"
  local indent="$2"
  local files=$(find "$dir" -maxdepth 1 -type f | wc -l | tr -d '[:space:]')
  local dirs=$(find "$dir" -maxdepth 1 -type d | wc -l | tr -d '[:space:]')
  local hidden_files=$(find "$dir" -maxdepth 1 -type f -name ".*" | wc -l | tr -d '[:space:]')
  local hidden_dirs=$(find "$dir" -maxdepth 1 -type d -name ".*" | wc -l | tr -d '[:space:]')
  local total_size=$(du -shc "$dir" | grep total | awk '{print $1}' | tr -d '[:space:]')

  echo "$indent$(basename "$dir") ($files visible files, $hidden_files hidden files, $dirs visible directories, $hidden_dirs hidden directories, $total_size overall size)"
}

# Call the display_tree function with the current directory
display_tree "." ""

# Adjust the depth level based on the command-line argument
if [ "$depth" == "1" ]; then
  echo "$(find . -maxdepth 1 -type f | wc -l | tr -d '[:space:]') files"
  echo "$(find . -maxdepth 1 -type d | wc -l | tr -d '[:space:]') directories"
elif [ "$depth" == "2" ]; then
  for dir in */; do
    if [ -d "$dir" ]; then
      display_tree "$dir" ""
    fi
  done
fi

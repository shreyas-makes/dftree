# dftree - Detailed File Tree Generator

`dftree` is an [npm package that generates a visual representation of a directory structure using Unicode box-drawing characters.](https://www.npmjs.com/package/dftree)

# Installation

`npm install -g dftree` to install this package globally using npm

To add using bun,

`bun add -g dftree` to install this package globally using bun

It generates detailed tree diagrams using UNICODE characters in this specific format:

```
. (17 visible files, 0 hidden files, 16 visible directories, 0 hidden directories, 8.34 MB overall size)
├── Dockerfile
├── Gemfile (3 hidden files, 7 visible files, 1.00 KB overall size)
├── Gemfile.lock
├── README.md
├── Rakefile (4 hidden files, 2 visible files, 8 MB overall size)
├── app (8 hidden files, 2 visible files, 8 MB overall size)
│   ├── controllers (8 hidden files, 2 visible files, 8 MB overall size)
│   ├── models (8 hidden files, 2 visible files, 8 MB overall size)
│   ├── views (8 hidden files, 2 visible files, 8 MB overall size)
│   └── ... (additional subdirectories)
├── bin (5 hidden files, 2 visible files, 8 MB overall size)
│   └── rails
├── config (5 hidden files, 2 visible files, 8 MB overall size)
│   ├── environments (8 hidden files, 2 visible files, 8 MB overall size)
│   ├── initializers (8 hidden files, 2 visible files, 8 MB overall size)
│   └── ... (additional subdirectories)
├── config.ru
├── db (7 hidden files, 4 visible files, 8 MB overall size)
│   └── migrate (8 hidden files, 2 visible files, 8 MB overall size)
├── lib (3 hidden files, 7 visible files, 8 MB overall size)
│   └── tasks (8 hidden files, 2 visible files, 8 MB overall size)
├── log (0 hidden files, 7 visible files, 8 MB overall size)
├── public (8 hidden files, 7 visible files, 8 MB overall size)
│   ├── assets (8 hidden files, 2 visible files, 8 MB overall size)
│   └── ... (additional subdirectories)
├── storage (8 hidden files, 5 visible files, 8 MB overall size)
├── test (8 hidden files, 7 visible files, 8 MB overall size)
│   ├── controllers (8 hidden files, 2 visible files, 8 MB overall size)
│   ├── models (8 hidden files, 2 visible files, 8 MB overall size)
│   └── ... (additional subdirectories)
├── tmp (8 hidden files, 2 visible files, 8 MB o:verall size)
│   ├── cache (8 hidden files, 2 visible files, 8 MB overall size)
│   └── ... (additional subdirectories)
└── vendor (8 hidden files, 2 visible files, 8 KB overall size)
```

## Usage

1. Run `dftree` in your directory

2. To specify a depth level, use the `-L` option:
   ```
   dftree -L 2
   ```
   This will display the file tree up to the specified depth level.


## Options

- `-L <depth>`: Set the maximum depth level for the file tree.

## Output

The script will display the file tree using Unicode box-drawing characters. Each directory is represented by a folder icon (`├──`) and each file is represented by a file icon (`├── filename`).

If a depth level is specified, the script will also display the number of visible files, hidden files, visible directories, hidden directories, and the overall size of each directory.


## License

This script is licensed under the [MIT License](LICENSE).

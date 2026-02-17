# Introduction to Statistical Thinking (PreTeXt Version)

This is the PreTeXt version of "Introduction to Statistical Thinking" by Benjamin Yakir.

## About PreTeXt

[PreTeXt](https://pretextbook.org/) is an authoring and publishing system for scholarly documents. This repository contains a PreTeXt conversion of the original bookdown-based statistics textbook.

## Building the Book

### Prerequisites

Install PreTeXt CLI and dependencies:

```bash
pip install -r requirements.txt
```

Or install PreTeXt CLI directly:

```bash
pip install pretextbook
```

### Build HTML Version

To build the HTML version of the book:

```bash
pretext build web
```

To view the built book locally:

```bash
pretext view web
```

### Build PDF Version

To build the PDF version:

```bash
pretext build print
```

## Project Structure

- `source/` - Contains all PreTeXt source files
  - `main.ptx` - Main book file with structure
  - `ch-*.ptx` - Individual chapter files
  - `appendix-*.ptx` - Appendix files
- `publication/` - Publication configuration files
- `project.ptx` - Project configuration file
- `output/` - Build output directory (not tracked in git)
- `.github/workflows/` - GitHub Actions for automated builds

## GitHub Actions

This repository includes automated workflows:

1. **Deploy** (`.github/workflows/deploy.yml`) - Automatically builds and deploys the book to GitHub Pages when changes are pushed to the main branch
2. **Check** (`.github/workflows/check.yml`) - Checks that the book builds successfully on pull requests

## Viewing the Book Online

Once deployed, the book will be available at:
https://pretextbooks.github.io/statthink/

## License

This book is open source and may be used by anyone who wishes to do so under the conditions of the Creative Commons Attribution License (CC-BY 3.0).

## Original Version

The original bookdown version of this book can be found in the root directory of this repository.

## Contributing

Contributions are welcome! Please submit pull requests with your changes. The automated checks will verify that your changes build successfully.

## Author

**Benjamin Yakir**  
Department of Statistics  
The Hebrew University of Jerusalem

# sysutils
A collection of small shell utilities for Linux, backend development, Git, Rust, and system administration.

## Installation
Clone the repository:

```bash
git clone https://www.github.com/chrnio/sysutils
cd sysutils
```

Generate command symlinks:
```bash
./install.sh
```

Add the generated `bin` directory to your PATH:
```bash
export PATH="$HOME/Projects/sysutils/bin:$PATH"
```
Add the same line to your `zshrc` or `bashrc` to make it permanent and reload the shell.

> [!NOTE]
> All scripts can be run directly from the terminal.

## Adding New Scripts
1. Place the script in the appropriate category directory.

2. Make it executable:
```bash
chmod +x path/to/script.sh
```

3. Regenerate symlinks:
```bash
./install.sh
```

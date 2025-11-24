# Universal Folder Sorter

A simple Bash script to sort your download folder by file types (music, video, images, documents, etc.), automatically creating folders only as needed.

## Features

- Sorts files into organized folders by type.
- Creates folders only if required.
- Doesn’t overwrite existing files (safe move).

## Supported Platforms

- **Linux**
- **macOS**
- **Android** (Termux)
- **Windows** (WSL)

## Usage

### 1. Download or Clone

```sh
git clone https://github.com/isme8349-cmd/universal-folder-sorter.git
cd universal-folder-sorter
```

Or just download the `sorter.sh` script.

### 2. Make It Executable

```sh
chmod +x sorter.sh
```

### 3. Run the Script

By default, the script works in `$HOME/storage/downloads`.  
You can edit the `folder` variable in the script if your downloads path is different.

#### On Linux/macOS:

```sh
./sorter.sh
```

#### On Android (Termux):

First, grant storage permissions in Termux:
```sh
termux-setup-storage
```
Then:
```sh
./sorter.sh
```

#### On Windows (WSL):

Open WSL and go to your downloads folder, for example:
```sh
cd /mnt/c/Users/YourUser/Downloads
```
Edit the `folder` variable in the script, or use:
```sh
FOLDER="/mnt/c/Users/YourUser/Downloads" bash sorter.sh
```

## Customization

Edit the `extensions` array in the script to add, remove, or change file types/folders.

## License

MIT

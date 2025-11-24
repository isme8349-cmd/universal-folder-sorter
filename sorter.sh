#!/bin/bash

folder="$HOME/storage/downloads"
cd "$folder" || { echo "Cannot access $folder"; exit 1; }

declare -A extensions=(
  ["Music"]="mp3"
  ["Image"]="jpg png webp jpeg gif bmp svg"
  ["Video"]="mp4 mkv avi mov flv wmv"
  ["Pdf"]="pdf"
  ["Apk"]="apk xapk"
  ["Bash Script"]="sh bash"
  ["Bin"]="bin exe"
  ["Text"]="txt log md csv json xml"
  ["PHP"]="php"
  ["Compressed"]="zip rar 7z tar gz bz2"
  ["Office"]="doc docx xls xlsx ppt pptx"
  ["Fonts"]="ttf otf"
  ["Iso"]="iso"
)

for folderName in "${!extensions[@]}"; do
  ext_list=${extensions[$folderName]}
  create_folder=false
  for ext in $ext_list; do
    if ls *."$ext" &> /dev/null; then
      create_folder=true
      break
    fi
  done

  if $create_folder; then
    mkdir -p "$folderName"
    for ext in $ext_list; do
      mv -n *."$ext" "$folderName"/ 2> /dev/null
    done
  fi
done

echo "Files have been sorted and folders were created only if needed ✓"

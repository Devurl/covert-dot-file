#!/bin/bash

if [[ -z $1 ]]; then
  echo "Please provide a file to convert."
  exit 1
fi

if [[ ! -f $1 ]]; then
  echo "$1 is not a valid file."
  exit 1
fi

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"
dotfile=".$filename"

cp "$1" "$dotfile.$extension"
rm "$1"

echo "File converted to $dotfile.$extension"

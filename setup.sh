#!/bin/sh

# For Linux and Mac
files=( $(find ~/.dotfiles -type f | egrep -v '.git|.DS_Store|README.md|setup.sh') )

for file in ${files[@]}; do
  case "${file##*/}" in
    .* )
      ln -Ffis "$file" "$HOME/${file##*/}"
      ;;
    * )
      ln -Ffis "$file" "$HOME/.${file##*.dotfiles/}"
      ;;
  esac
done

exit 0

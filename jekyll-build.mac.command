#! /bin/bash

cd "$(dirname "$0")"

export PATH="$HOME/opt/homebrew-jekyll/bin":$PATH
bundle exec jekyll build --destination ../gnu-mcu-eclipse.github.io.git

echo
echo "Done"

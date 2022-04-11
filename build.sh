#!/usr/bin/env bash

# Usage: mk_slides <folder> <md_file>
mk_slides () {
  echo "Exporting slides for $1/$2..."
  pushd $1 > /dev/null
  npx bs export --web $2 -o ../dist/$1
  popd > /dev/null
}

set -e
rm -rf dist

# Presentations to export
mk_slides azure-intro azure-intro.md



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
mk_slides state-management state-management.md
mk_slides pwa pwa-new.md
mk_slides contribute-oss contribute-oss.md
mk_slides azure-intro azure-intro.md
mk_slides async-work async-work.md
mk_slides chaos chaos.md

# Generate index
echo "Generating index..."
./_scripts/generate-index.js dist

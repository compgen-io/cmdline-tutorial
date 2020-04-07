#!/bin/bash
if [ ! -e venv ]; then
    ./install.sh
fi
venv/bin/mkdocs build
cd site
git init
git add .
git commit -m 'deploy'
git remote add origin git@github.com:compgen-io/cmdline-tutorial.git
git checkout -b gh-pages
git push --force origin gh-pages
cd ..
rm -rf site

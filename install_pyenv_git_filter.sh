#!/bin/bash

echo "Adding this folder to PATH in .bashrc :"
ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
echo "$ABSOLUTE_PATH"

echo ""

echo "export PATH=${ABSOLUTE_PATH}:\$PATH" >> ~/.bashrc

git config filter.clean_ipynb.clean ipynb_drop_output.py
git config filter.clean_ipynb.smudge cat
git config --add include.path ${ABSOLUTE_PATH}/../.gitconfig


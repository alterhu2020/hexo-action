#!/bin/sh -l

set -e

git config --global user.name "$IMPUT_USER_NAME"
git config --global user.email "$INPUT_USER_EMAIL"

sh -c "hexo $*"

echo ::set-output name=notify::$*
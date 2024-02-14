#!/bin/bash
#
# Script to help install programs used by the dotfiles for debian based systems

set -eu -o pipefail

CURR_DIR=$(dirname "$0")

for helper in $CURR_DIR/helpers/*; do
    source $(realpath $helper)
done

sudo apt update -qq

for file in $CURR_DIR/scripts/*; do
    fullpath=$(realpath $file)
    source ${fullpath}
done




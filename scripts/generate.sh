#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

jupyter nbconvert index.ipynb \
    --output-dir=_site/ \
    --to html \
    --no-prompt \
    --no-input

jupyter nbconvert slides/*.ipynb \
    --output-dir=_site/ \
    --to slides \
    --no-prompt \
    --embed-images \
    --reveal-prefix reveal \
    --SlidesExporter.reveal_theme hsbi-cto

#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

jupyter nbconvert --output-dir=_site/ --to html --no-prompt --no-input index.ipynb
jupyter nbconvert --output-dir=_site/ --to slides --embed-images --reveal-prefix=reveal slides/*.ipynb

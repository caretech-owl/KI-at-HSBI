#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..
cp -r slides/images _site

jupyter nbconvert slides/*.ipynb \
    --output-dir=_site/ \
    --to slides \
    --no-prompt \
    --reveal-prefix reveal \
    --TemplateExporter.extra_template_basedirs templates \
    --SlidesExporter.reveal_theme hsbi-cto \
    --template hsbi-cto

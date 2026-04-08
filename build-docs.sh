#!/bin/sh
set -e
cd docs/

rm -rf build/

cp pytket-docs-theming/conf.py .

# Run link checker in C.I.
sphinx-build -b linkcheck . build -W

# Build pages
sphinx-build -b html . build -W -D html_title="pytket user guide"

set +e

rm conf.py

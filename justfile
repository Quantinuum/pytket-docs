clean:
    rm -rf sphinx/jupyter_execute
    rm -rf sphinx/.jupyter_cache
    rm -rf sphinx/build

prepare:
    cp -R sphinx/pytket-docs-theming/_static sphinx
    cp sphinx/pytket-docs-theming/conf.py sphinx

build: prepare
    cd sphinx && uv run sphinx-build -b html . build -D html_title="pytket user guide" -W

build-debug: prepare
    cd sphinx && uv run sphinx-build -b html . build -D html_title="pytket user guide"

serve:
    npm exec serve sphinx/build

linkcheck:
    cd sphinx && uv run sphinx-build -b linkcheck . build -W


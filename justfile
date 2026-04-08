clean:
    rm -rf docs/jupyter_execute
    rm -rf docs/.jupyter_cache
    rm -rf docs/build

prepare:
    cp -R docs/pytket-docs-theming/_static docs
    cp docs/pytket-docs-theming/conf.py docs


build: prepare
    cd docs && uv run sphinx-build -b html . build -D html_title="pytket user guide" -W

build-debug: prepare
    cd docs && uv run sphinx-build -b html . build -D html_title="pytket user guide"

serve-debug: build-debug
    npm exec serve docs/build



linkcheck:
    cd docs && uv run sphinx-build -b linkcheck . build -W


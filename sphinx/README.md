# User Guide Documentation (Manual + Example Notebooks)

## Building the Docs

The manual and examples are both built as a single sphinx site with shared dependencies. The [Quantinuum-sphinx](https://github.com/Quantinuum/quantinuum-sphinx) theme is used for styling.

Note that it is recommended to have the [uv package manager](https://github.com/astral-sh/uv) and the [just command runner](https://github.com/casey/just) installed to build the docs.


The docs can be built locally by following these steps

1. First clone this repository including the [pytket-docs-theming](https://github.com/Quantinuum/pytket-docs-theming) submodule

```shell
git clone git@github.com:Quantinuum/pytket-docs.git --recurse-submodules
```

If you use `git pull` inside the `sphinx/pytket-docs-theming` directory, you should be using the latest version of the theming.

2. Next, build the docs using the `just build` command

```shell
just build
```

This will execute the jupyter cells in the manual and example notebooks and show the outputs of most cells.

Some notebooks are currently excluded from execution at the moment. These notebooks are listed [here](https://github.com/Quantinuum/pytket-docs/blob/main/docs/conf.py#L46).

3. Optionally, serve the html pages locally on a web server. This requires [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).

```shell
just serve
```


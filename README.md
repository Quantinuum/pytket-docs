# pytket-docs

[![Slack](https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white)](https://tketusers.slack.com/join/shared_invite/zt-18qmsamj9-UqQFVdkRzxnXCcKtcarLRA#/shared-invite/email)
[![PyPI version](https://badge.fury.io/py/pytket.svg)](https://badge.fury.io/py/pytket)

Pytket is a python module for interfacing with tket, a quantum computing toolkit and optimising compiler developed by Quantinuum.

This repository contains the pytket user manual and example notebooks content in the `docs` directory. It does not contain source code for pytket itself. The source code is maintained on the [tket repository](https://github.com/Quantinuum/tket).

The manual and examples are built and deployed as html pages using the [myst-nb](https://myst-nb.readthedocs.io/en/latest/) library. Instructions on building the docs locally can be found [here](https://github.com/Quantinuum/pytket-docs/blob/main/sphinx/README.md).

Note that the TKET website is not deployed from this repository. This repository just contains the content for the documentation.
 

## Getting started

Pytket is available for Python 3.10, 3.11 and 3.12 on Linux, MacOS and Windows.
To install, run:

```shell
pip install pytket
```

API documentation can be found at https://docs.quantinuum.com/tket/api-docs.
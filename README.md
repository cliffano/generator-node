<!-- BEGIN:AVATAR -->
![Avatar](avatar.jpg)
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
[![Build Status](https://github.com/cliffano/generator-node/workflows/CI/badge.svg)](https://github.com/cliffano/generator-node/actions?query=workflow%3ACI)
[![Code Scanning Status](https://github.com/cliffano/generator-node/workflows/CodeQL/badge.svg)](https://github.com/cliffano/generator-node/actions?query=workflow%3ACodeQL)
[![Security Status](https://snyk.io/test/github/cliffano/generator-node/badge.svg)](https://snyk.io/test/github/cliffano/generator-node)
<!-- END:BADGES -->

# Generator Node

Generator Node is a code generator for node.js packages.

It provides the following components:

| Component | Description |
|-----------|-------------|
| node-cli | Generate a node.js CLI project with executable command. |
| node-cli-partials | Generate README partial snippets for Node CLI projects. |
| node-lib | Generate a node.js library project. |
| node-lib-partials | Generate README partial snippets for Node library projects. |

All components are built using [Suntory](https://github.com/cliffano/suntory).

## Usage

Generate node.js CLI project:

```shell
make generate-node-cli
```

Generate node.js CLI partial snippets:

```shell
make generate-node-cli-partials
```

Generate node.js library project:

```shell
make generate-node-lib
```

Generate node.js library partial snippets:

```shell
make generate-node-lib-partials
```

All components will prompt you the following inputs:

| Prompt | Description |
|--------|-------------|
| Project ID | Used for node.js package name and CLI command. |
| Project Name | Used in documentation or comments. |
| Project Description | Used in documentation or comments. |
| Author Name | The name of the project author. |
| Author Email | The email of the project author. |
| Author URL | The author's website URL. |
| GitHub ID | The GitHub ID of the project repo. |
| GitHub Repository | The GitHub repository URL for the project. |
| GitHub Actions token prefix | Prefix for the GitHub token secret used in GitHub Actions workflows. |

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
[Developer's Guide](https://cliffano.github.io/developers-guide-makefile.html)
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
Build reports:

<!-- END:BUILD_REPORTS -->

Related Projects:

* [Suntory](https://github.com/cliffano/suntory) - Makefile for building node.js packages


![Avatar](avatar.jpg)

[![Build Status](https://github.com/cliffano/generator-node/workflows/CI/badge.svg)](https://github.com/cliffano/generator-node/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/generator-node/badge.svg)](https://snyk.io/test/github/cliffano/generator-node)

# Generator Node

Generator Node is a code generator for node.js packages.

It provides the following components:

| Component | Description |
|-----------|-------------|
| node-cli | Generate a node.js CLI project with executable command. |
| node-lib | Generate a node.js library project. |

All components are built using [Suntory](https://github.com/cliffano/suntory).

## Usage

Generate node.js CLI project:

    make generate-node-cli

Generate node.js library project:

    make generate-node-lib

Both components will prompt you the following inputs:

| Prompt | Description |
|--------|-------------|
| Project ID | Used for Python package name and CLI command. |
| Project Name | Used in documentation or comments. |
| Project Description | Used in documentation or comments. |
| Author Name | The name of the project author. |
| Author Email | The email of the project author. |
| Author URL | The author's website URL. |
| GitHub ID | The GitHub ID of the project repo. |

## Colophon

Related Projects:

* [Suntory](https://github.com/cliffano/suntory) - Makefile for building node.js packages


![Avatar](avatar.jpg)

[![Build Status](https://github.com/{{github_id}}/{{github_repo}}/workflows/CI/badge.svg)](https://github.com/{{github_id}}/{{github_repo}}/actions?query=workflow%3ACI)
[![Dependencies Status](https://img.shields.io/librariesio/release/npm/{{project_id}})](https://libraries.io/npm/{{project_id}})
[![Code Scanning Status](https://github.com/{{github_id}}/{{github_repo}}/workflows/CodeQL/badge.svg)](https://github.com/{{github_id}}/{{github_repo}}/actions?query=workflow%3ACodeQL)
[![Coverage Status](https://coveralls.io/repos/github/{{github_id}}/{{github_repo}}/badge.svg?branch=main)](https://coveralls.io/r/{{github_id}}/{{github_repo}}?branch=main)
[![Security Status](https://snyk.io/test/github/{{github_id}}/{{github_repo}}/badge.svg)](https://snyk.io/test/github/{{github_id}}/{{github_repo}})
[![Published Version](https://img.shields.io/npm/v/{{project_id}}.svg)](https://www.npmjs.com/package/{{project_id}})

# {{project_name}}

{{project_name}} is a {{project_desc}} .

## Installation

    npm install -g {{project_id}}

## Usage

Create a configuration file, e.g. `{{project_id}}.yaml`:

    ---
    text: Hello World

Run {{project_id}} with display command:

    {{project_id}} display

Run {{project_id}} with specified config file:

    {{project_id}} --config-file {{project_id}}.yaml display

Run {{project_id}} with specified config file and custom flags:

    {{project_id}} --config-file {{project_id}}.yaml display --reverse true --transform upper

Show help guide:

    {{project_id}} --help

## Configuration

These are the configuration properties that you can use with `{{project_id}}` CLI.
Some example configuration files are available on [examples](examples) folder.

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| `text` | String | The message text | Hello World |

## Colophon

[Developer's Guide](https://{{github_id}}.github.io/developers_guide.html#nodejs)

Build reports:

* [Code complexity report](https://{{github_id}}.github.io/{{project_id}}/complexity/plato/index.html)
* [Unit tests report](https://{{github_id}}.github.io/{{project_id}}/test/mocha.txt)
* [Test coverage report](https://{{github_id}}.github.io/{{project_id}}/coverage/c8/index.html)
* [Integration tests report](https://{{github_id}}.github.io/{{project_id}}/test-integration/cmdt.txt)
* [API Documentation](https://{{github_id}}.github.io/{{project_id}}/doc/jsdoc/index.html)

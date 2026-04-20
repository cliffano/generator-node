#!/usr/bin/env bash
set -o errexit
set -o nounset

cd ../
npm link .
cd examples/

node _{{project_id}}.js

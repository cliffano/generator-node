#!/usr/bin/env bash
set -o errexit
set -o nounset

cd ../
npm link .
cd examples/

npm link {{project_id}}
node _{{project_id}}.js

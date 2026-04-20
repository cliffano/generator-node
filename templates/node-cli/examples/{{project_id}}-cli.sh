#!/usr/bin/env bash
set -o errexit
set -o nounset

cd ../
npm link .
cd examples/

printf "\n\n========================================\n"
printf "Show help guide:\n"
{{project_id}} --help

printf "\n\n========================================\n"
printf "Show version info: {{project_id}} --version\n"
{{project_id}} --version

printf "\n\n========================================\n"
printf "Run command with default config file:\n"
{{project_id}} display

printf "\n\n========================================\n"
printf "Run command with specified config file:\n"
{{project_id}} --config-file {{project_id}}.yaml display

printf "\n\n========================================\n"
printf "Run command with specified config file and custom flags:\n"
{{project_id}} --config-file {{project_id}}.yaml display --reverse true --transform upper

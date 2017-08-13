#!/usr/bin/env bash
# Checks if a new version of one of the packages in the overlay is available
# Uses https://github.com/simonvanderveldt/newversionchecker
set -ex

docker run --rm -ti -v "${PWD}/tests/resources/newversionchecker.toml":/app/newversionchecker.toml -e GITHUB_API_TOKEN simonvanderveldt/newversionchecker

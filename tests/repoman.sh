#!/usr/bin/env bash
# Run repoman --full
set -ex

docker run --rm -ti -v "${HOME}"/.portage-pkgdir:/usr/portage/packages -v "${PWD}":/usr/local/portage -w /usr/local/portage gentoo/stage3-amd64:latest /usr/local/portage/tests/resources/repoman_full.sh

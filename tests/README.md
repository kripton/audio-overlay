# Audio-overlay automated tests

This directory contains all automated tests used to validate the audio-overlay and the ebuilds in it.
The following tests are available:

- `check_new_package_versions.sh` Checks if a new release/git tag is available for the packages in the overlay.
Creates an issue requesting a version bump if a new release is found.
- `emerge_new_or_changed_ebuilds.sh` Emerges new or changed ebuilds for pull requests.
Does so by determining which files are changed compared to the target branch (usually `master`) and emerging all new or changed ebuilds
- `emerge_random_ebuild.sh` Emerges a random ebuild.
Used to continually validate if the ebuilds are still working. Also used to fill the Travis CI binpkg cache
- `repoman.sh` Does a full [repoman](https://packages.gentoo.org/packages/app-portage/repoman) scan of the overlay

The `resources` directory contains some helper scripts as well as configuration for the tests.

## Requirements
The only requirement to run the tests is [`app-emulation/docker`](https://packages.gentoo.org/packages/app-emulation/docker)

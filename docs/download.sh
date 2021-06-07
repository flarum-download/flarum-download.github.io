#!/usr/bin/bash

(( EUID == 0 )) &&
  { echo >&2 "This script should not be run as root!"; exit 1; }

# -------------------------------------------------------------------------------------------------------------------- #
# Get options.
# -------------------------------------------------------------------------------------------------------------------- #

cd=$( command -v cd )
composer=$( command -v composer )
mkdir=$( command -v mkdir )
rm=$( command -v rm )
tar=$( command -v tar )

# -------------------------------------------------------------------------------------------------------------------- #
# -----------------------------------------------------< SCRIPT >----------------------------------------------------- #
# -------------------------------------------------------------------------------------------------------------------- #

flarum_eng() {
  name="flarum.eng"

  ${cd} "storage"                                               \
    && ${mkdir} -p "${name}"                                    \
    && ${composer} create-project flarum/flarum "${name}"       \
    && ${tar} -cJf "${name}.tar.xz" "${name}"                   \
    && ${rm} -rf "${name}"
}

flarum_rus() {
  name="flarum.rus"

  ${cd} "storage"                                               \
    && ${mkdir} -p "${name}"                                    \
    && ${composer} create-project flarum/flarum "${name}"       \
    && ${cd} "${name}"                                          \
    && ${composer} require marketplace/flarum-l10n-core-russian \
    && ${cd} ..                                                 \
    && ${tar} -cJf "${name}.tar.xz" "${name}"                   \
    && ${rm} -rf "${name}"
}

"$@"

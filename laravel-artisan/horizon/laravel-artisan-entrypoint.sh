#!/usr/bin/env sh

if [[ "$BUILT_FOR" == "dev" ]]; then
    $(which php) ${WORKDIR}/artisan horizon
else
 tail -f /dev/null
fi

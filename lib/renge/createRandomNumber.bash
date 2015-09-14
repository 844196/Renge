#!/bin/bash

function createRandomNumber() {
    if [[ -e "/dev/urandom" ]]; then
        local var="$(
            dd if=/dev/urandom bs=1 count=4 2>/dev/null \
                | od -vAn -tu4 \
                | sed 's/[^0-9]//g'
        )"
        echo "$(( var % ${1:-1} ))"
    else
        # shellcheck disable=SC2086
        awk 'BEGIN{
            srand();
            print substr(rand(), 3) % '${1:-1}'
        }'
    fi
}

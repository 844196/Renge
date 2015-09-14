#!/bin/bash

function usage() {
    cat <<-EOF
	Usage: ${ME} [options]
	    -l, --list                       Print all quotes list and exit.
	    -n, --number INT                 Specify quote number.
	    -f, --file PATH                  Specifiles the dictionary.
	EOF
    return 0
}

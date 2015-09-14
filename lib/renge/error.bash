#!/bin/bash

function error() {
    echo "${ME}: ${1}" 1>&2
    exit "${2:-1}"
}

#!/bin/bash

# check shunit
if [[ ! -x "./shunit2-2.1.6/src/shunit2" ]]; then
    curl -L "https://shunit2.googlecode.com/files/shunit2-2.1.6.tgz" | tar zx
    [[ "${?}" -ne 0 ]] && exit 1
fi


# test
function testRengePrintUsage() {
    # short option
    ./renge -h
    assertEquals 0 $?

    # long option
    ./renge --help
    assertEquals 0 $?
}

function testRengePrintVersion() {
    # short option
    ./renge -v
    assertEquals 0 $?

    # long option
    ./renge --version
    assertEquals 0 $?
}

function testRengeIllegalOption() {
    # short option
    ./renge -f
    assertEquals 255 $?

    # long option
    ./renge --foobar
    assertEquals 255 $?
}

function testRengeTrueExit() {
    local rtn="$(./renge)"
    assertNotNull "${rtn}"
    assertEquals 0 $?
}

function testRengeFalseExit() {
    # before
    mv ./renge-quotes ./no-renge-quotes

    ./renge
    assertEquals 2 $?

    # after
    mv ./no-renge-quotes ./renge-quotes
}


# load shunit
. ./shunit2-2.1.6/src/shunit2

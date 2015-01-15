#!/bin/bash

# check shunit
if [[ ! -x "./shunit2-2.1.6/src/shunit2" ]]; then
    curl -L "https://shunit2.googlecode.com/files/shunit2-2.1.6.tgz" | tar zx
    [[ "${?}" -ne 0 ]] && exit 1
fi


# test
function testFortunerengePrintUsage() {
    # short option
    ./fortunerenge -h
    assertEquals 0 $?

    # long option
    ./fortunerenge --help
    assertEquals 0 $?
}

function testFortunerengePrintVersion() {
    # short option
    ./fortunerenge -v
    assertEquals 0 $?

    # long option
    ./fortunerenge --version
    assertEquals 0 $?
}

function testFortunerengeIllegalOption() {
    # short option
    ./fortunerenge -f
    assertEquals 255 $?

    # long option
    ./fortunerenge --foobar
    assertEquals 255 $?
}

function testFortunerengeTrueExit() {
    local rtn="$(./fortunerenge)"
    assertNotNull "${rtn}"
    assertEquals 0 $?
}

function testFortunerengeFalseExit() {
    # before
    mv ./renge-quotes ./no-renge-quotes

    ./fortunerenge
    assertEquals 2 $?

    # after
    mv ./no-renge-quotes ./renge-quotes
}


# load shunit
. ./shunit2-2.1.6/src/shunit2

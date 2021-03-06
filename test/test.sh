#!/bin/bash

# check shunit
if [[ ! -x "./shunit2-2.1.6/src/shunit2" ]]; then
    curl -L "https://shunit2.googlecode.com/files/shunit2-2.1.6.tgz" | tar zx
    [[ "${?}" -ne 0 ]] && exit 1
fi


# test
function testMake() {
    make install PREFIX='.'
    assertEquals 0 $?

    [[ -x "./bin/renge" ]]
    assertEquals 0 $?

    [[ -e "./share/renge/renge-quotes" ]]
    assertEquals 0 $?
}

function testRengePrintUsage() {
    # short option
    ./bin/renge -h
    assertEquals 0 $?

    # long option
    ./bin/renge --help
    assertEquals 0 $?
}

function testRengePrintVersion() {
    # short option
    ./bin/renge -v
    assertEquals 0 $?

    # long option
    ./bin/renge --version
    assertEquals 0 $?
}

function testRengeIllegalOption() {
    # short option
    ./bin/renge -z
    assertEquals 255 $?

    # long option
    ./bin/renge --foobar
    assertEquals 255 $?
}

function testRengeTrueExit() {
    local rtn="$(./bin/renge)"
    assertNotNull "${rtn}"
    assertEquals 0 $?
}

function testRengeTrueExitSpecifyQuoteNumber() {
    local rtn="$(./bin/renge -n 1)"
    assertEquals 0 $?

    local rtn="$(./bin/renge --number 1)"
    assertEquals 0 $?
}

function testRengeFalseExitIlligaQuoteNumber() {
    ./bin/renge -n 111111
    assertEquals 3 $?

    ./bin/renge -n ddddd
    assertEquals 3 $?
}

function testRengeQuotesList() {
    ./bin/renge -l
    assertEquals 0 $?

    local rtn="$(./bin/renge -l | head -n 1 | sed 's/^1 .*/0/g')"
    assertEquals "${rtn}" $?
}

function testRengeSpecifilesDictionary() {
    # before
    echo {1..100} | tr ' ' '\n' >./dummy-dictionary

    ./bin/renge -f ./dummy-dictionary
    assertEquals 0 $?

    local rtn="$(./bin/renge -f ./dummy-dictionary -n 85)"
    assertEquals "${rtn}" "85"
}

function testRengeFalseExit() {
    # before
    mv ./share/renge/renge-quotes ./share/renge/no-renge-quotes

    ./bin/renge
    assertEquals 2 $?
}


# load shunit
. ./shunit2-2.1.6/src/shunit2

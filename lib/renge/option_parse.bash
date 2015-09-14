#!/bin/bash

for OPTIONS in "${@-}"
do
    case "${OPTIONS}" in
        '-h'|'--help' )
            usage
            exit 0
            ;;
        '-v'|'--version' )
            version
            exit 0
            ;;
        '-n'|'--number' )
            if [[ -z "${2-}" ]] || [[ "${2-}" =~ ^-+ ]]; then
                error "option requires an argument -- '${1}'" "-1"
            fi
            quote_number="${2}"
            shift 2
            ;;
        '-f'|'--file' )
            if [[ -z "${2-}" ]] || [[ "${2-}" =~ ^-+ ]]; then
                error "option requires an argument -- '${1}'" "-1"
            fi
            quote_file="${2}"
            shift 2
            ;;
        '-l'|'--list' )
            quote_listflag="1"
            shift 1
            ;;
        -* )
            error "illegal option -- '${1}'" "-1"
            ;;
        * )
            if [[ -n "${1-}" ]] && [[ ! "${1-}" =~ ^-+ ]]; then
                args+=( "${1}" )
                shift 1
            fi
            ;;
    esac
done

#!/bin/bash
function usage(){
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS conté el nom complet"
    exit 1
}

NUMBER_PARAM=${#}

if [[ ${NUMBER_PARAM} -eq 0 ]]
then
    usage
fi

echo "número de paràmetres: ${NUMBER_PARAM}"

SCRIPT_NAME=${0}
echo "Nom del script ${SCRIPT_NAME}"

echo "primer paràmetre: ${1}"
USER_NAME=${1}
echo "USER_NAME: ${USER_NAME}"
echo "segon paràmetre: ${2}"
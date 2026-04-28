#!/bin/bash

function usage(){
    echo "Usage ${0} USER_NAME [COMMENT]"
    echo
    echo "has de ser root"
    echo "COMMENT inclourà el nom complet de l'usuari"
    exit 1 #indica que hi ha agut una errada
}




#Script per crear un usuari

#primer comprovam si son l'usuari root
if [[ ${UID} -ne 0 ]]
then
    usage
fi

#hem de comprovar que tenim al manco un paràmetre
then 
    usage 
fi

USER_NAME=${1}
#desplaçam paràmetres a l'esquerra
shift 
COMMENTS=${*}

PASSWORD=$(date +%s%N | sha256sum | head -c10)

#creariem l'usuari
useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null
#control de la darrera comanda
if [[ ${?} -ne 0 ]]  
then 
    echo "Errada creant l'usuari"
    exit 1
fi

#canvi de password
echo "${USER_NAME}:${PASSWORD}"  | chpasswd
#comprovam si el canvi de password ha anat be
if [[ ${?} -ne 0 ]]
then
    echo "Errada canviant passwd"
    exit 1
fi

#fer canviar el passwd
passwd -e ${USER_NAME}

#informam del que se ha creat
echo "Usuari creat: ${USER_NAME}"
echo "password generat: ${PASSWORD}"
echo "hOSTname: ${HOSTNAME}"

exit 0
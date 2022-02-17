#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/include.sh

datepat=$(date +%Y%m%d-%H-%M-%N)

for filename in ${TMP_DIR_MULTI}/*.jp*
do
	convert $filename $filename.pdf
done


pdftk ${TMP_DIR_MULTI}/*.pdf cat output ${DEST_DIR}/${datepat}.pdf
rm ${TMP_DIR_MULTI}/*.*

chown www-data:www-data ${DEST_DIR}/*

exit 0

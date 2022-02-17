#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/include.sh

datepat=$(date +%Y%m%d-%H-%M-%N)
filename=${datepat}-%d.jpg

scanimage --mode Gray --source ADF -d ${DEVICE} --batch=${TMP_DIR}/${filename} --resolution=${RESOLUTION} -y ${Y_OFFSET} --format=${IMG_FORMAT}


for filename in ${TMP_DIR}/*.jp*
do
	convert $filename $filename.pdf
done

pdftk ${TMP_DIR}/*.pdf cat output ${DEST_DIR}/${datepat}.pdf
rm ${TMP_DIR}/*.*

exit 0

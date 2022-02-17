#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/include.sh

datepat=$(date +%Y%m%d-%H-%M-%N)
filename=${datepat}-%d.jpg

scanimage --mode Gray --source ADF -d ${DEVICE} --batch=${TMP_DIR_MULTI}/${filename} --resolution=${RESOLUTION} -y ${Y_OFFSET} --format=${IMG_FORMAT}

exit 0

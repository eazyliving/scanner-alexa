shopt -s nullglob

BASEDIR=/home/pi/scanner

DEST_DIR=${BASEDIR}/../paperless-ng/import/
TMP_DIR=${BASEDIR}/single
TMP_DIR_MULTI=${BASEDIR}/multi

DEVICE=airscan:w1:epson
RESOLUTION=200
Y_OFFSET=297
IMG_FORMAT=jpeg
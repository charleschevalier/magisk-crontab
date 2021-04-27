#!/system/bin/sh

MODDIR=${0%/*}
CRONTABS_PATH=/data/crontabs

crond -c $CRONTABS_PATH
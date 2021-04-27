#!/system/bin/sh

MODDIR=${0%/*}
CRONTABS_PATH=/data/crontabs

crond -c $CRONTABS_PATH

# @reboot is not implemented in busybox crond, we do it manually
cat /data/crontabs/root | grep @reboot | while read -r line ; do
  command="${line:8}"
  echo "Starting command $command"
  eval $command &
done

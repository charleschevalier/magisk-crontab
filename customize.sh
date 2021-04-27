ui_print "*******************************"
ui_print "      crontab for Android      "
ui_print "*******************************"

CRONTABS_PATH=/data/crontabs

mkdir -p $CRONTABS_PATH
touch $CRONTABS_PATH/root

set_perm "$MODPATH/service.sh"  0  0  0755
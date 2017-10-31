#!/bin/bash
# author: https://github.com/igogorevi4
#
FILESTATUS=/tmp/rtmp_nginx.tmp # chmod 777 ...

wget http://127.0.1.1/stat -O $FILESTATUS -o /dev/null
#fi
case "$1" in
bytes_in)
grep $1 $FILESTATUS | cut -f2 -d '>' | cut -f1 -d '<' | head -n1
exit 0
;;
bytes_out)
grep $1 $FILESTATUS | cut -f2 -d '>' | cut -f1 -d '<' | head -n1
exit 0
;;
accepted)
grep $1 $FILESTATUS | cut -f2 -d '>' | cut -f1 -d '<'
exit 0
;;
*)
echo "ZBX_UNSUPPORTED"
exit 1
;;
esac

exit 0

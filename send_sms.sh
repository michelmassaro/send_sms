# vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker:
#
#                                      _
#                      _o)   __ _  ___/ /__  __ _  (o_
####################   /\\  /  ' \/ _  / _ `/  ' \ //\   #####################
#                      \_v /_/_/_/\_,_/\_, /_/_/_/ v_/
#                                     /___/
#
# Author:       Michel Massaro
# Version :     V1.0
# Date :        24/10/14
# Description : push notification via smsapi.free-mobile.fr
#
# Examples
# ========
# For sending the content of a file foo :
#   sh send_sms.sh -f foo
#
# For writing the message in the command line :
#   sh send_sms.sh "message with space if you want"
#
##############################################################################


#!/usr/local/bin/bash  

USR="**********"
PSW="**********"
if [ $# = 2 ]
then
    if [ $1 = -f ]
    then
        MSG="$(cat $2 | xargs | sed 's/ /%20/g')"
    else
        echo "Unknown option"
    fi
else 
        MSG="$(echo $1 | xargs | sed 's/ /%20/g')"
fi

URL="https://smsapi.free-mobile.fr/sendmsg?user=${USR}&pass=${PSW}&msg=${MSG}"

curl -k "${URL}"

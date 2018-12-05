#!/bin/bash
HOST=
PORT={{ mongodb_conf.port }}
USER={{ mongodb_conf.user }}
PASS={{ mongodb_conf.password }}
AUTHDB=admin
exec  2>&-

if [ -z $USER ]
then
status=$(mongo admin --port ${PORT} --host ${HOST} --eval "db.runCommand( { replSetGetStatus : 1 } ).myState" --quiet)
else
status=$(mongo admin -u ${USER} -p ${PASS}  --authenticationDatabase ${AUTHDB} --port ${PORT} --host ${HOST} --eval "db.runCommand( { replSetGetStatus : 1 } ).myState" --quiet)
fi
if (( $? )); then
echo 33
exit 0
fi

echo $status

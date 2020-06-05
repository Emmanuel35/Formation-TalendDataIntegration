#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`

CLASSPATH=.:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/log4j-slf4j-impl-2.12.1.jar:$ROOT_PATH/../lib/log4j-api-2.12.1.jar:$ROOT_PATH/../lib/log4j-core-2.12.1.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/filecopy.jar:$ROOT_PATH/../lib/jsch-0.1.55.jar:$ROOT_PATH/../lib/talend-proxy-1.0.0.jar:$ROOT_PATH/../lib/slf4j-api-1.7.25.jar:$ROOT_PATH/../lib/dom4j-2.1.1.jar:$ROOT_PATH/pushfiletosftp_0_1.jar:
JVM_ARGS=-Xms256M -Xmx1024M -Dfile.encoding=UTF-8

java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib \
  $JVM_ARGS \
  -cp $CLASSPATH \
  formation.pushfiletosftp_0_1.PushFileTosFTP  "$@"
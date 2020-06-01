#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`

CLASSPATH=.:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/log4j-slf4j-impl-2.12.1.jar:$ROOT_PATH/../lib/log4j-api-2.12.1.jar:$ROOT_PATH/../lib/log4j-core-2.12.1.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/slf4j-api-1.7.25.jar:$ROOT_PATH/../lib/dom4j-2.1.1.jar:$ROOT_PATH/t1_0_1.jar:
JVM_ARGS=-Xms256M -Xmx1024M -Dfile.encoding=UTF-8

java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib \
  $JVM_ARGS \
  -cp $CLASSPATH \
  formation.t1_0_1.T1  --context=Default "$@"
#!/bin/sh
TMP_DIR=./tmp
if [ ! -d $TMP_DIR ];then
  mkdir $TMP_DIR
else
  echo tmp dir $TMP_DIR exist
fi

JAR_NAME=`ls | grep jar`
echo "start up $JAR_NAME"
DIR=`dirname $0`
cd $DIR
nohup java -Xss4M -Xms1024M -Xmx4096M -XX:MetaspaceSize=128M -XX:MaxMetaspaceSize=512M -XX:+UseG1GC -Djava.io.tmpdir=$TMP_DIR -Dloader.path=libs -jar `ls | grep jar` > /dev/null 2>error.log &
echo $!>tpid

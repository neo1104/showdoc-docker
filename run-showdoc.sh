#!/bin/bash
CUR_DIR=`pwd`
if [ ! -d $CUR_DIR/data ]; then
  mkdir $CUR_DIR/data
  cp $CUR_DIR/php/src/Sqlite/showdoc.db.php $CUR_DIR/data
fi

docker-compose up -d

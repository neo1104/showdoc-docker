#!/bin/bash
CUR_DIR=`pwd`
if [ ! -d $CUR_DIR/data ]; then
  mkdir $CUR_DIR/data
  cp $CUR_DIR/php/src/Sqlite/showdoc.db.php $CUR_DIR/data
fi

docker run --name showdoc-php -v $CUR_DIR/data:/var/www/html/Sqlite -d showdoc-php apache2-foreground
docker run --name showdoc-nginx -p 8080:80 --link showdoc-php:showdoc-php -d showdoc-nginx nginx -g 'daemon off;'

#!/bin/sh
pub build &&
cd build &&
rm `find . -name *ng_*.json`;
cd web;
gcloud --project ma-web compute copy-files * static-ma:/usr/share/nginx/www/demo.fnx.io/keygenerator/ --zone europe-west1-b;

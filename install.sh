#!/bin/bash
npm install compression ejs express request serve-static ssh2

sed -i "s#https://stackedit.io#http://localhost#g" \
    ./public/sitemap.xml \
    ./app/index.js \
    ./chrome-app/manifest.json \
    ./public/recovery.html \
    ./public/res/constants.js \
    ./public/res/extensions/welcomeTour.js \
    ./public/res/html/dialogAbout.html \
    ./public/res/storage.js \
    ./public/res-min/main.js \
    ./views/editor.html \
    ./views/error_404.html \
    ./views/landing.html \
    ./views/viewer.html

sed -i "s#https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML#http://localhost/res/bower-libs/mathjax/MathJax.js?config=TeX-AMS_HTML#g" \
    ./public/res/settings.js \
    ./public/res-min/main.js

tar -xvf bower-libs-install.tgz

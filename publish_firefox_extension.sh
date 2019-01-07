#!/bin/bash
read -p 'Enter hostname:port for the browser extension to be used to contact the backend: ' hostnamePort
cp -r firefox_extension/ firefox_extension_stage
cd firefox_extension_stage/
backend_line="const BACKEND_URL = \"http:\/\/$hostnamePort\/tooltipQuery\.php\";"
sed -i '' "1s/.*/${backend_line}/" pledari.js
zip -r -FS ../backend/www/pledarix-extension.zip ./*
cd ..
rm -r firefox_extension_stage/
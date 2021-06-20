#!/bin/bash

nodenv local 14.15.4
npm run migration:run
npm install
npm run build
pm2 kill
pm2 start dist/src/index.js

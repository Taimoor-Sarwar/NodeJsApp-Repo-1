#!/bin/bash

echo 'run application_start.sh: ' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

cd /home/ubuntu/NodeJsApp-Repo-1
echo 'pm2 start app.js' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log
pm2 start app.js >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

echo 'pm2 restart app.js' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log
pm2 restart app.js >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

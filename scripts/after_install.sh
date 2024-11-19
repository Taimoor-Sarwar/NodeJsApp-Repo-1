#!/bin/bash
echo 'run after_install.sh: ' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

echo 'cd /home/ec2-user/nodejs-server-cicd' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log
cd /home/ubuntu/NodeJsApp-Repo-1 >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

echo 'npm install' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log 
npm install >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

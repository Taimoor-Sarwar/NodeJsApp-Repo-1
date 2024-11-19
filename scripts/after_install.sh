#!/bin/bash
echo 'run after_install.sh: ' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

echo 'cd /home/ubuntu/NodeJsApp-Repo-1' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log
cd /home/ubuntu/NodeJsApp-Repo-1 >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

echo 'npm install' >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log 
npm install >> /home/ubuntu/NodeJsApp-Repo-1/deploy.log

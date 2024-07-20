#!/usr/bin/env sh

set -x
echo "Starting the deployment script..."

# Using forward slashes for Windows paths
docker run -d -p 80:80 --name my-apache-php-app -v /c/Users/yuuki/ICT2216Lab/Lab7b/jenkins-php-selenium-testing/src:/var/www/html php:7.2-apache
if [ $? -ne 0 ]; then
    echo "Failed to start the Docker container."
    exit 1
fi

sleep 1
echo "Container started successfully."

docker ps -a

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

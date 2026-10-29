#!/bin/bash
set -e
IMAGE=$1
echo ">>> Deploying $IMAGE to private server..."
docker pull $IMAGE
docker stop nginx-private-sample 2>/dev/null || true
docker rm nginx-private-sample 2>/dev/null || true
docker run -d \
  --name nginx-private-sample \
  --restart always \
  -p 80:80 \
  $IMAGE
echo ">>> Deployment successful!"
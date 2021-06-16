
#!/bin/bash 

APP_NM=sample
IMAGE=$1

docker pull $IMAGE
docker rm -f $APP_NM &> /dev/null
docker run -d --name $APP_NM -p 8081:8080 $IMAGE




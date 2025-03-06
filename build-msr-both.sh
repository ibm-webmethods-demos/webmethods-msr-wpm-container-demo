#!/bin/sh

BASE_IMAGE="ibmwebmethods.azurecr.io/webmethods-microservicesruntime:10.15.0.17"
BUILD_IMAGE="webmethods-microservicesruntime-jdbc-mq:10.15.0.17"
WPM_PACKAGES="WmJDBCAdapter:v10.3.2.21 WmMQAdapter:v6.5.0.52"

docker build \
    -t ${BUILD_IMAGE} \
    -f Dockerfile \
    --build-arg BASE_IMAGE=${BASE_IMAGE} \
    --build-arg WPM_TOKEN=${WPM_TOKEN} \
    --build-arg WPM_PACKAGES=${WPM_PACKAGES} \
    .

echo "Done!!"
exit 0;
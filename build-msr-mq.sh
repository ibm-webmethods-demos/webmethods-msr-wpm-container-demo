#!/bin/sh

BASE_IMAGE="cp.icr.io/cp/webmethods/integration/webmethods-microservicesruntime:11.1.0.3"
BUILD_IMAGE="webmethods-microservicesruntime-mq:11.1.0.3"
WPM_PACKAGES="WmMQAdapter:v6.5.0.52"

docker build \
    -t ${BUILD_IMAGE} \
    -f Dockerfile \
    --build-arg BASE_IMAGE="${BASE_IMAGE}" \
    --build-arg WPM_TOKEN="${WPM_TOKEN}" \
    --build-arg WPM_PACKAGES="${WPM_PACKAGES}" \
    .

echo "Done!!"
exit 0;
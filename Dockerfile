ARG BASE_IMAGE
ARG WPM_TOKEN
ARG WPM_PACKAGES

FROM ${BASE_IMAGE}

ARG WPM_TOKEN
ARG WPM_PACKAGES
ARG USERID=1724
ARG GROUPID=1724

# Add wpm that is not there
# comment the lines below if WPM is already part of the container
ADD --chown=${USERID}:${GROUPID} ./wpm ${SAG_HOME}/wpm

WORKDIR ${SAG_HOME}/wpm

RUN ${SAG_HOME}/wpm/bin/wpm.sh install -ws https://packages.webmethods.io -wr licensed -j ${WPM_TOKEN} -d ${SAG_HOME}/IntegrationServer ${WPM_PACKAGES}

WORKDIR /

# Cleanup the wpm from the final image to ensure immutability
RUN rm -Rf ${SAG_HOME}/wpm
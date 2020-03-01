ARG         NODE_VERSION="12"
FROM        node:${NODE_VERSION}

LABEL       maintainer="https://github.com/hermsi1337"

ARG         NODECHEF_CLI_VERSION="2.5.0"

RUN         set -x && \
            npm install -g nodechef-cli@$"{NODECHEF_CLI_VERSION}"

ENTRYPOINT  ["nc"]
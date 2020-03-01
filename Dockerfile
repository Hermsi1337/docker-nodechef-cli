ARG         NODE_VERSION="12"
FROM        node:${NODE_VERSION}

LABEL       maintainer="https://github.com/hermsi1337"

ARG         NODECHEF_CLI_VERSION="@"
ENV         NODECHEF_CLI_VERSION="${NODECHEF_CLI_VERSION}" \
            SKIP_UPDATE_CHECK="1"

RUN         set -x && \
            npm install -g nodechef-cli"${NODECHEF_CLI_VERSION}"

ENTRYPOINT  ["nc"]
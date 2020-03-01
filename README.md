# NodeChef-CLI dockerized

This image contains the [NodeChef-CLI](https://www.nodechef.com/docs/parse-server/global/cli) for deploying applications to [NodeChef](https://www.nodechef.com/).

# Usage

## Gitlab-CI

I initially built this image in order to use it in my Gitlab-CI pipeline:

```yaml
nodechef:dev:
  stage: publish
  image: hermsi/nodechef-cli
  environment:
    name: development
  script: >
    nc deploy
    -i "${APPLICATION}-dev"
    -auth "${NODECHEF_DEPLOY_TOKEN}"
    -e "${NODECHEF_ENV_FILE}"
    -bp go
    --updateafterping
  only:
    - tags
```

## Locally via CLI

But it's also possible to use this image locally, if you don't want to install `node` and the `nodechef-cli` itself:

```shell
$ docker run --rm -v $(pwd):/app -w /app --entrypoint nc hermsi/nodechef-cli deploy -i yourEnv -auth yourDeployToken --updateafterping
```
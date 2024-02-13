# Example Dockerized No-IP Dynamic Update Client (DUC)

This repository contains an example Dockerfile to build and run the No-IP Dynamic Update Client (DUC) in a Docker container.

## Getting your DUC host/username/password

### <ins>**** You need to setup your DUC configuration ([NUC Configuration](https://my.noip.com/dynamic-dns/device-configuration-assistant))</ins>

## Prerequisites

- Docker installed on your system ([Install Docker](https://docs.docker.com/get-docker/))

## Customization
You can customize the No-IP DUC configuration by updating the following environment variables in the Dockerfile:
- **DUC_HOST**: The hostname or domain for your No-IP account.
- **DUC_URI**: The URI for downloading the No-IP DUC. You can update the version using **DUC_VERSION**.
- **DUC_VERSION**: The version of the No-IP DUC to download.

## Build Docker Image

To build the Docker image, run the following command:

```bash
docker build . -t duc-docker
```

## Run Docker Container
```bash
docker run -d --name duc-docker-container -e DUC_USERNAME=username -e DUC_PASSWORD=password duc-docker
```

## To see what happen on your DUC customer on docker
```bash
docker logs duc-docker-container
```

Replace **duc-docker-container** with the name you want to give to your Docker container, **username** with your No-IP username, **password** with your No-IP password, and **duc-docker** with the name of the Docker image you built in the previous step.

The -d flag runs the container in detached mode (in the background).

# customized-private-bin

This repository contains a Dockerfile used to create an image from the `privatebin/nginx-fpm-alpine:1.3.1` image. See [PrivateBin](https://github.com/PrivateBin/PrivateBin) repository for details. The configuration of the ProvateBin is adjusted in some parts in `/conf.php`.

## using the image

The docker image is built and deployed as a GitHub package through a GitHub action. To use the image first use `docker login -u <user> -p <token> docker.pkg.github.com` to login the GitHub package registry.
Next you can pull the image using `docker pull docker.pkg.github.com/brauls/customized-private-bin/private-bin-img`. The image is the available locally and you can start a container from it.

### running the container using https

```
docker run -d -p 8081:443 --name privatebin --restart always docker.pkg.github.com/brauls/customized-private-bin/private-bin-img
```
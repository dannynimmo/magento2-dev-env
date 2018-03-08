#!/usr/bin/env bash

set -o errexit;
set -o nounset;
set -o pipefail;

imagesDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";


phpVersion='7.1.15';
phpImageVersion='0.1.0';

nginxVersion='1.12.2';
nginxImageVersion='0.1.0';


cd ${imagesDir}/php;
docker build \
    --build-arg PHP_VERSION=${phpVersion} \
    --tag dannynimmo/magento2-php:${phpVersion}-${phpImageVersion} \
    .;

cd ${imagesDir}/nginx;
docker build \
    --build-arg NGINX_VERSION=${nginxVersion} \
    --tag dannynimmo/magento2-nginx:${nginxVersion}-${nginxImageVersion} \
    .;

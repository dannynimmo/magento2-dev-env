# Magento 2 Docker Development Environment

This repo contains a quick & simple way to run a development environment for Magento 2 within Docker.


## Quick Start

1. Download the latest [`docker-compose.yml`](docker-compose.yml) file to your Magento 2 project root
    ```bash
    curl -o https://raw.githubusercontent.com/dannynimmo/magento2-dev-env/master/docker-compose.yml
    ```
1. Bring up the containers. By default the webserver will be accessible over port 8001, and the database over port 33061 (feel free to change these).
    ```bash
    docker-compose up -d
    ```


## Usage

### n98-magerun
[n98-magerun](https://github.com/netz98/n98-magerun2) is installed in the image by default. We can use [`docker-compose exec`](https://docs.docker.com/compose/reference/exec/) to run it:

```bash
docker-compose exec app magerun [arguments]
```

### Logs
Logs are routed to stderr within each container, and can therefore be viewed using [`docker-compose logs`](https://docs.docker.com/compose/reference/logs/):

```bash
docker-compose logs --follow
```

### Database
The database can be accessed from your local machine using your GUI of choice (I recommend the excellent [Sequel Pro](https://www.sequelpro.com/) for MacOS) and the below details:

| Host             | Port  | Username | Password | Database |
| ---------------- | ----- | -------- | -------- | -------- |
| _your Docker IP_ | 33061 | root     | root     | magento2 |


## Changelog

The changelog for this project is located in the [CHANGELOG.md](CHANGELOG.md) file.

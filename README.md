# mysql51

Docker container for legacy MySQL 5.1.73 version, based on CentOS 8.

## Volumes

- /var/lib/mysql

Should be owned by mysql user (998:996). Initialization:

`docker run --rm -v $(pwd)/data:/var/lib/mysql mobex/mysql51 mysql_install_db`

## Ports

- 3306


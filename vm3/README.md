# VM3
Job: Cloud Server
Running: Nextcloud, MkDocs

## Files

- [docker-compose.yml](docker-compose.yml) - Compose file for Nextcloud
- [mkdocs/](mkdocs/) - MkDocs
    - [docker-compose.yml](mkdocs/docker-compose.yml) - Compose file for MkDocs and Nginx
    - [Dockerfile](mkdocs/Dockerfile) - Dockerfile for MkDocs
    - [setup.sh](mkdocs/setup.sh) - Build Docker container (ToDo: Do this in Compose file)
    - [nginx/](mkdocs/nginx/) - Files for Nginx proxy
        - [nginx.conf](mkdocs/nginx/nginx.conf) - nginx config file
        - [.htpasswd](mkdocs/nginx/.htpasswd) - contains usernames and hashed passwords generated using `htpasswd -c <.htpasswd file path> <username>`
    - [notes/](mkdocs/notes/) - configs for MkDocs
        - [mkdocs.yml](mkdocs/notes/mkdocs.yml) - MkDocs config file
        - [sync/](mkdocs/notes/sync/) - Docker container to sync files from Nextcloud to MkDocs
            - [Dockerfile](mkdocs/notes/sync/Dockerfile) - simple container for running `sync.sh`
            - [docker.sh](mkdocs/notes/sync/docker.sh) - script to build & run docker container
            - [sync.sh](mkdocs/notes/sync/) - pulls notes from nextcloud
        - docs/ - Markdown notes 


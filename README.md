# homeserver
My Homeserver setup, mainly docker-compose files and small scripts


## Hardware

| Device            | Usage                          | OS         | CPU                                                     | RAM  | Swap | Drive | PSU  |
|-------------------|--------------------------------|------------|---------------------------------------------------------|------|------|-------|------|
| Raspberry Pi 3B+  | Testing code                   | -          | Default                                                 | 1GB  | 1GB  | 64GB  | -    |
| Old PC            | deploying code and running VMs | Proxmox VE | 4 x Intel(R) Core(TM) i5-6600K CPU @ 3.50GHz (1 Socket) | 16GB | 128GB | 8TB   | 500W |

## Software

- Raspberry PI 3B+  
    currently not used

- Old PC  
    running Promox
    - VM1: Alpine Linux, Docker (deployment)
        - Cores: 2
        - RAM: 12GB (4GB Ram + 8GB Swap)
        - Drive: 64GB
        - Containers: 7 (Gitea, Gitea-Act_runner, Passkey Server, Portainer, Grafana, Prometheus, MySQL)
        - [code](vm1/)
    - VM2: Alpine Linux, Docker (testing)
        - Cores: 2
        - RAM: 8GB (2GB Ram + 6GB Swap)
        - Drive: 64GB
        - Containers: 3 (PhpMyAdmin, MySQL, Drone [Docker runner])
        - [code](vm2/)
    - VM3: Ubuntu 22.04.3 LTS (cloud)
        - Cores: 2
        - RAM: 8GB (4GB Ram + 4GB Swap)
        - Drive: 1TB
        - Containers: 4 (Nextcloud, MkDocs, MariaDB, Nginx, MkDocs/Nextcloud sync container)
        - [code](vm3/)


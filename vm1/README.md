# VM1
Job: Deployment
Running: Gitea, Gitea-Act_runner, Passkey Server, Portainer, Grafana, Prometheus, MySQL

## Files
- [gitea/](gitea/) - Gitea
    - [docker-compose.yml](gitea/docker-compose.yml) - compose file for gitea and mysql
- [act_runner/](act_runner/) - Act Runner for Gitea
    - [docker-compose.yml](act_runner/docker-compose.yml) - compose file for act_runner
    - [config.yml](act_runner/config.yml) - configuration for act_runner
- [grafana/](grafana/)
    - [docker-compose.yml](grafana/docker-compose.yml) - compose file for grafana
- [passky/](passky/)
    - [docker-compose.yml](passky/docker-compose.yml) - compose file for passky
- [portainer/](portainer/)
    - [docker-compose.yml](portainer/docker-compose.yml) - compose file for portainer
- [prometheus/](prometheus/)
    - [docker-compose.yml](prometheus/docker-compose.yml) - compose file for prometheus

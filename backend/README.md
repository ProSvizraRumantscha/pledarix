# Backend

This directory has the following structure:
- `docker-compose.yml` is used to build an run the environment. Having installed [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/), calling
```docker-compose up -d```
should get the backend up and running within minutes
- `pledari-elastic` contains the Docker configuration including the setup scripts for the Elasticsearch backend
- `php` contains php specific configuration, see the `phpfpm` section in `docker-compose.yml`
- `www` contains the php script translating queries from the webbrowser to Elasticsearch queries (we don't want to expose our Elasticsearch server). You can put static content in here as well, nginx will serve it.
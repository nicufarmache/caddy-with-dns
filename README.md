# Caddy image with dns plugins

docker-compose.yml example:

    version: '3'

    services:
      caddy:
        image: nicufrm/docker-with-dns
        container_name: caddy
        restart: unless-stopped
        network_mode: host
        volumes:
          - ./Caddyfile:/etc/caddy/Caddyfile
        environment:
          - AWS_KEY_ID=XXXXXXXXXXXXXXXXXXXX
          - AWS_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
          - CF_API_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
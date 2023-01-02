FROM caddy:<version>-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/route53 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:<version>

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
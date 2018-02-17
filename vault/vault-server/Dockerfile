FROM vault:0.8.3

COPY ./config.hcl /vault/config/

CMD ["vault", "server", "-config=/vault/config/config.hcl"]

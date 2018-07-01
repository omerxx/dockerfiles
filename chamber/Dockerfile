FROM alpine as builder
WORKDIR /opt/app
RUN apk update \
    && apk add ca-certificates \
    && update-ca-certificates \
    && apk add openssl \
    && wget https://github.com/segmentio/chamber/releases/download/v2.1.0/chamber-v2.1.0-linux-amd64 \
    && chmod +x chamber* \
    && mv chamber* /usr/local/bin/chamber



# FROM scratch
# COPY --from=builder /opt/app/chamber* /


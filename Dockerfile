FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

RUN apk add curl restic supercronic bash
ENTRYPOINT ["/usr/bin/supercronic", "-prometheus-listen-address", "0.0.0.0:9746", "/etc/cronfile"]

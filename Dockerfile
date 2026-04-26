FROM alpine:3.23.4@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11

RUN apk add curl restic supercronic bash
ENTRYPOINT ["/usr/bin/supercronic", "-prometheus-listen-address", "0.0.0.0:9746", "/etc/cronfile"]

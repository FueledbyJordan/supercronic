FROM alpine:3.22.2@sha256:4b7ce07002c69e8f3d704a9c5d6fd3053be500b7f1c69fc0d80990c2ad8dd412

RUN apk add curl restic supercronic bash
ENTRYPOINT ["/usr/bin/supercronic", "-prometheus-listen-address", "0.0.0.0:9746", "/etc/cronfile"]

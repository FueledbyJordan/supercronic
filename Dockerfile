FROM alpine:3.23.3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659

RUN apk add curl restic supercronic bash
ENTRYPOINT ["/usr/bin/supercronic", "-prometheus-listen-address", "0.0.0.0:9746", "/etc/cronfile"]

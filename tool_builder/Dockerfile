FROM rounak316/watchdog:0.0.1 as builder

FROM rounak316/kaniko_test:latest
COPY --from=builder /go/src/github.com/meddler-io/watchdog/watchdog.bin  /kaniko/watchdog

COPY ./config.json kaniko/.docker/config.json

# COPY ./test /workspace/
ENTRYPOINT [ "/kaniko/watchdog" ]
# ENV message_queue_topic=tasks_test
# 


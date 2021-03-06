# Docker image for the Drone AWS CodeDeploy plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-codedeploy
#     make deps build docker

FROM alpine:3.3

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-codedeploy /bin/
ENTRYPOINT ["/bin/drone-codedeploy"]

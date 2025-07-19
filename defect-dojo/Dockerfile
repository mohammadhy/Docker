FROM ubuntu:focal
RUN apt-get update && apt-get install -y curl jq
WORKDIR  /opt/apt
COPY --chmod=755 script.sh  .
ENTRYPOINT ["./script.sh"]

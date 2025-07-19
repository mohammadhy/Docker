FROM ubuntu:jammy
RUN apt-get update && apt install -y wget jq
RUN apt install -y mysql-client
RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && chmod +x mc && mv mc /usr/local/bin/
COPY ./script.sh ./kubectl .
RUN mkdir /.kube
COPY config /.kube/config
RUN chmod +x ./kubectl && mv kubectl /usr/local/bin
RUN chmod +x ./script.sh
ENTRYPOINT ["/bin/bash"]

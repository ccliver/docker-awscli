FROM amazonlinux:2

RUN yum -y install "Development Tools" \
  zlib-devel \
  openssl-devel \
  ncurses-devel \
  libffi-devel \
  sqlite-devel.x86_64 \
  readline-devel.x86_64 \
  bzip2-devel.x86_64 \
  git \
  awscli \
  jq \
  tar \
  python3-pip \
  && yum -y clean all && rm -rf /var/cache

RUN pip3 install --no-cache-dir awsebcli

RUN curl -Lo /usr/local/bin/ecs-cli https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-darwin-amd64-latest && chmod +x /usr/local/bin/ecs-cli

WORKDIR /root

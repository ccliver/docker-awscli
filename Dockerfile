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

RUN pip3 install awsebcli

WORKDIR /root

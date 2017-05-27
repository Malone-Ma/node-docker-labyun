FROM dockerfile/ubuntu

MAINTAINER Malone <303397077@qq.com>

# Install Node
RUN   \
  cd /opt && \
  wget https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz && \
  tar -xzf node-v6.10.3-linux-x64 && \
  mv node-v6.10.3-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v6.10.3-linux-x64.tar.gz

# Set the working directory
WORKDIR   /src

CMD ["/bin/bash"]

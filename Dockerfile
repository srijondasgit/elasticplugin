FROM adoptopenjdk/openjdk12:jdk-12.0.2_10-ubuntu

RUN apt-get update && \
  apt-get install -y zip unzip && \
  rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

RUN curl -s "https://get.sdkman.io" | bash && \
  source "/root/.sdkman/bin/sdkman-init.sh" && \
  sdk install gradle 6.8.2

WORKDIR /plugin

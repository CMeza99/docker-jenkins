FROM jenkins/jenkins:alpine

ENV JAVA_OPTS="-Xmx2048m -Djenkins.install.runSetupWizard=false"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN cd && set -ex && \
  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

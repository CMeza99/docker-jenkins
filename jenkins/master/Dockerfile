FROM jenkins/jenkins:alpine

ENV JAVA_OPTS="-Xmx2048m -Djenkins.install.runSetupWizard=false"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY --chown=1000:1000 home/* /var/jenkins_home/

RUN cd && set -ex && \
  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

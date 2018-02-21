FROM jenkins/jenkins:alpine

ENV JAVA_OPTS="-Xmx2048m"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

FROM jenkins/jenkins:lts

USER root

# Installer Docker
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

USER jenkins
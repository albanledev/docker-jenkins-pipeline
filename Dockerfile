# Utiliser l'image officielle Jenkins LTS comme base
FROM jenkins/jenkins:lts

# Passer à l'utilisateur root pour installer Docker
USER root

# Installer Docker à l'intérieur du conteneur Jenkins
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

# Repasser à l'utilisateur Jenkins après l'installation de Docker
USER jenkins
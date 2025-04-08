pipeline {
    agent {
        docker {
            image 'nginx:latest'  // Utiliser l'image nginx (ou l'image de ton choix)
            args '-p 81:80'  // Mapper le port 80 du conteneur sur le port 81 de l'hôte
        }
    }

    stages {
        stage('Build') {
            steps {
                script {
                    // Afficher les informations sur le conteneur
                    sh 'docker ps'  // Lister les conteneurs Docker actifs
                    sh 'curl localhost:81'  // Vérifier si nginx fonctionne correctement sur le port 81
                }
            }
        }
    }
}
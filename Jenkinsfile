pipeline {
    agent any
    stages {
        stage('Test Docker') {
            steps {
                sh 'docker version'
                sh 'docker run hello-world'
            }
        }
    }
}
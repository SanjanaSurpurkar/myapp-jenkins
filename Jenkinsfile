pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SanjanaSurpurkar/myapp-jenkins.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("sanjanasurpurkar/myapp-jenkins:1.0")
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    docker.image("sanjanasurpurkar/myapp-jenkins:1.0").run()
                }
            }
        }
    }
}

pipeline {
    agent { label 'agent1' }
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    dockerImage = docker.build("java-maven-demo:latest")
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage: add deployment steps as needed, e.g., docker run or push'
            }
        }
    }
}

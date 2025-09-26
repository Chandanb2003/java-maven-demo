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
        stage('Deploy to tomcat ') {
            steps {
                echo 'Deploy stage: add deployment steps as needed, e.g., deploy to Tomcat'
            }
        }
    }
}

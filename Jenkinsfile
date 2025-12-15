pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
              git branch: 'master',
    url: 'https://github.com/Alaaiden/ProjetStudentsManagement-DevOps.git',
    credentialsId: 'github-token'

            }
        }

        stage('Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package -DskipTests'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'CI PIPELINE SUCCESS'
        }
        failure {
            echo 'CI PIPELINE FAILED'
        }
    }
}

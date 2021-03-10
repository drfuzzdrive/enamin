pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'docker build -t tomcat .'
            }
        }
        stage('Push to registry') {
            steps {
                // Get some code from a GitHub repository
                sh 'docker image tag newimage localhost:5000/tomcat'
                sh 'docker push localhost:5000/tomcat'
            }
        }
    }
}

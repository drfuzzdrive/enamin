pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'docker build -t newimage .'
                sh 'docker image tag newimage localhost:5000/newimage'
                sh 'docker push localhost:5000/newimage'
            }
        }
    }
}

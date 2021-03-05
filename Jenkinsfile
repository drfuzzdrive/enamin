pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'docker build -t newimage .'
                sh 'docker run -d -p 9000:8080 newimage'
            }
        }
    }
}

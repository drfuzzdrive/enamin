pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/drfuzzdrive/enamin.git'
                sh 'docker build .'
            }
        }
    }
}

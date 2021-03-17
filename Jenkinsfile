pipeline {
    environment {
        registry = "registry.test:5000"
        registryCredential = '7'
        dockerImage = ''
    }

    agent any
    
    stages {
        stage('Build war') {
            steps {
                dir ('app') {
                  sh 'mvn clean package'
                }
            }
        }      
        stage('Build Docker Image') {
            steps {
                // Get some code from a GitHub repository
                sh 'docker build -t tomcat .'
            }
        }
        stage('Push to registry') {
            steps {
               sh 'docker image tag tomcat registry.test:5000/tomcat'
               sh 'docker push registry.test:5000/tomcat'
            }
        }
        stage('Push to registry') {
            script {
                docker.withRegistry( '', registryCredential ) {
                dockerImage.push()
                }
            }
        }
    }
}

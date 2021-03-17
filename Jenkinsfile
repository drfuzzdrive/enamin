pipeline {
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
                // Get some code from a GitHub repository
                sh 'docker image tag tomcat registry.test:5000/tomcat'
                sh 'docker push registry.test:5000/tomcat'
            }
        }
    }
}

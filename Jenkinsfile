pipeline {
    environment {
        REGISTRY = "registry.test:5000"
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
        stage('Tag') {
            steps {
                sh 'docker image tag tomcat ${REGISTRY}/tomcat:${BUILD_NUMBER}'
               //sh 'docker push registry.test:5000/tomcat'
            }
        }
        stage('Push to registry') {
            steps {
                withCredentials([usernamePassword(credentialsId: '7', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $(PASS) | docker login $registry -u $USER --password-stdin'
                    sh 'docker push ${REGISTRY}/tomcat:${BUILD_NUMBER}'
                }
            }
        }
    }
}

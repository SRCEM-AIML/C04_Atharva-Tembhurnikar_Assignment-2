pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'atharvanand24/studentproject'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/yourrepo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Stop any running container with the same name
                    sh 'docker stop studentproject || true && docker rm studentproject || true'

                    // Run the new container
                    sh 'docker run -d --name studentproject -p 8001:8001 $DOCKER_IMAGE'
                }
            }
        }
    }
}

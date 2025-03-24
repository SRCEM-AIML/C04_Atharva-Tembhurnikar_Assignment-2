pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'atharvanand24/my-django-app:latest'
    }
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/SRCEM-AIML/C04_Atharva-Tembhurnikar_Assignment2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-credentials', url: '']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
        stage('Deploy Container') {
            steps {
                sh 'docker stop my-django-app || true'
                sh 'docker rm my-django-app || true'
                sh 'docker run -d -p 8000:8000 --name my-django-app $DOCKER_IMAGE'
            }
        }
    }
}

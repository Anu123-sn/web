pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "my-static-site"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t %DOCKER_IMAGE%:%BUILD_NUMBER% -t %DOCKER_IMAGE%:latest ."
            }
        }

        stage('Deploy') {
            steps {
                bat '''
                  docker rm -f my-static-site || exit 0
                  docker run -d --name my-static-site -p 8081:80 %DOCKER_IMAGE%:latest
                '''
            }
        }
    }
}


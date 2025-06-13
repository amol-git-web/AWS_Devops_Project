pipeline {
    agent any

    stages {
        stage('Clone the Code') {
            steps {
                git url: "https://github.com/atharva5683/django-todo.git", branch: "devops"
            }
        }

        stage('Build with Docker Compose') {
            steps {
                sh 'docker-compose build'
            }
        }

        stage('Test the Code') {
            steps {
                echo "Test the code"
                // You can add `docker-compose run web python manage.py test` here
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}

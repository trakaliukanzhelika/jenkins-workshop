pipeline {
    agent any
     tools {
        terraform 'terraform' 
    }

    stages {
        stage('Terraform Prep') {
            steps {
                // Виконуємо команди Terraform у терміналі Jenkins
                sh 'terraform version'
                sh 'terraform init'
            }
        }
    }
}

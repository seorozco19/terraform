pipeline {
    agent any

    stages {
        stage('Deploy Terraform') {
            steps {
                withAWS(credentials: 'aws-credentials', region:'us-east-1'){
                echo 'terraform init'
                sh """
		env
                terraform init -backend-config=backends/zemoga.tfback
                """
		}
            }
        }
        stage('AWS') {
            steps {
                withAWS(credentials: 'aws-credentials', region:'us-east-1'){
                        sh "aws iam get-user"

                }

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}


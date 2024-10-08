
pipeline {
    agent any

    environment {
        TF_VAR_app            = 'myapp'
        TF_VAR_env            = 'sbx'
        TF_VAR_account_id     = '474668421114'
    }
 stages {
        stage('ANS Demo') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'ons-dev',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                ]]) {
                    sh 'aws s3 ls'
                }
            }
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/redhatsri/Testing_automation.git'
            }
        }

        stage('Install Terraform') {
            steps {
                sh '''
                if ! command -v terraform &> /dev/null
                then
                    wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
                    unzip terraform_1.0.11_linux_amd64.zip
                    sudo mv terraform /usr/local/bin/
                fi
                terraform --version
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file="variables.tfvars"'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var-file="variables.tfvars" -auto-approve'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

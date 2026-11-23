pipeline {
    agent any

    tools {
        nodejs 'NodeJS-20'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Salesforce CLI') {
            steps {
                sh 'npm install --global @salesforce/cli'
                sh 'sf --version'
            }
        }
        stage('Validate') {
            steps {
                withCredentials([string(credentialsId: 'SF_TARGET_ORG', variable: 'SF_TARGET_ORG')]) {
                    sh 'sf project deploy validate --manifest manifest/package.xml --target-org "$SF_TARGET_ORG" --test-level RunLocalTests --wait 60'
                }
            }
        }
    }

    post {
        always {
            echo 'Salesforce validation pipeline finished.'
        }
    }
}

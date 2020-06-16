pipeline {
    agent { docker { image 'node:11.13.0' } }
    stages {
        stage('build') {
            steps {
                sh 'npm install -g yarn'
                sh 'yarn install'
                sh 'yarn -v'
            }
        }
    }
}
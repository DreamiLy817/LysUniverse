pipeline {
    agent { docker { image 'node:11.13.0' } }
    stages {
        stage('build') {
            steps {
                sh 'yarn install'
                sh 'yarn -v'
            }
        }
    }
}
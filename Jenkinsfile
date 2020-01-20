pipeline {

    agent any

    environment {
            BUILD_TAG = '1.0'
            PASS = credentials('docker-hub-pass')
        }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build.sh
                '''
            }
        }
        stage('Push') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
                '''
            }
        }
    }
}

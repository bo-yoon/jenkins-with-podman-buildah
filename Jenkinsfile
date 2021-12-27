pipeline {
    agent any

    stages {
        stage('1. settings 확인') {
            steps {
                echo 'setting..'
                sh 'buildah --version'
                sh 'podman --version'
            }
        }
        stage('2. building') {
            steps {
                echo 'Building..'
                sh 'whoami'

                sh 'pwd'
                sh 'buildah bud -t yoonkwon23/bps-app:latest src/.'
                sh 'podman images'
                sh 'podman ps'
            }
        }
        stage('3.end') {
            steps {
                echo 'end....'
                
            }
        }
    }
}

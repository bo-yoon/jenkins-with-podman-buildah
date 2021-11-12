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
                sh 'podman run hello-world'
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

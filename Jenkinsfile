pipeline {
    agent any

    stages {
        stage('1. settings') {
            steps {
                echo 'setting..'
                sh 'sudo apt-get install -y podman'
                sh 'podman version'
                buildah version
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

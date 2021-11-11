pipeline {
    agent any

    stages {
        stage('1. settings') {
            steps {
                echo 'setting..'
                apt-get install -y podman
                apt-get install -y buildah
                podman version
                buildah version
            }
        }
        stage('2. building') {
            steps {
                echo 'Building..'
                podman run hello-world
                podman images
                podman ps
            }
        }
        stage('3.end') {
            steps {
                echo 'end....'
                
            }
        }
    }
}

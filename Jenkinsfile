pipeline {
    agent any
    stages {
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.9-eclipse-temurin-21'
                    reuseNode true
                }
            }
            steps {
                sh './mvnw clean install -DskipTests'
            }
        }
    }
}

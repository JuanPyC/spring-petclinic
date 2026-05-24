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
        stage('Docker Build') {
            steps {
                sh 'docker build -t blastonetwo/spring-petclinic:gestion-udem-jenkins .'
            }
        }
        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                    sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                    sh 'docker push blastonetwo/spring-petclinic:gestion-udem-jenkins'
                }
            }
        }
    }
}

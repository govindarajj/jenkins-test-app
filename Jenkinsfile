pipeline {
    agent any
    
    tools {
        maven 'M3'
        jdk 'JDK11'
    }
    
    environment {
        TOMCAT_URL = 'http://localhost:8080/manager/text'
        TOMCAT_CREDENTIALS = credentials('tomcat-credentials')
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/your-username/jenkins-test-app.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }
        
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('Package') {
            steps {
                sh 'mvn package -DskipTests'
            }
            post {
                success {
                    archiveArtifacts 'target/*.war'
                    echo "WAR file created: target/jenkins-test-app.war"
                }
            }
        }
        
        stage('Deploy to Tomcat') {
            steps {
                script {
                    try {
                        sh """
                            mvn tomcat7:deploy \
                            -Dtomcat.url=${TOMCAT_URL} \
                            -Dtomcat.username=${TOMCAT_CREDENTIALS_USR} \
                            -Dtomcat.password=${TOMCAT_CREDENTIALS_PSW}
                        """
                    } catch (Exception e) {
                        echo "Deploy failed, trying redeploy..."
                        sh """
                            mvn tomcat7:redeploy \
                            -Dtomcat.url=${TOMCAT_URL} \
                            -Dtomcat.username=${TOMCAT_CREDENTIALS_USR} \
                            -Dtomcat.password=${TOMCAT_CREDENTIALS_PSW}
                        """
                    }
                }
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline completed!'
            cleanWs()
        }
        success {
            echo 'Application deployed successfully!'
            emailext (
                subject: "SUCCESS: Pipeline ${env.JOB_NAME} - Build ${env.BUILD_NUMBER}",
                body: "Build URL: ${env.BUILD_URL}",
                to: "dev@example.com"
            )
        }
        failure {
            echo 'Pipeline failed!'
            emailext (
                subject: "FAILED: Pipeline ${env.JOB_NAME} - Build ${env.BUILD_NUMBER}",
                body: "Build URL: ${env.BUILD_URL}",
                to: "dev@example.com"
            )
        }
    }
}
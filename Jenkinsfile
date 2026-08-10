pipeline {
    agent any

    stages {
	
		stage('Clean Workspace') {
			steps {
				cleanWs()
				}
		}
		
        stage('checkout') {
            steps {
				script {
					try {
						echo 'git checkout stage'
						git branch: 'main', url: 'https://github.com/sivaramani12/mindcircuit-forked.git'
					}
					catch (Exception e) {
						echo "${e.message}"
					}
				}
			}
		}

        stage('build') {
            steps {
                echo 'Building with maven '
			    sh 'mvn clean install '
            }
        }
		
		stage('Deploy Parallel') {
			parallel{
				stage('Deploy to test') {
					steps {
						echo 'Deploying to tomcat test env'
						deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://3.94.113.81:8080/')], contextPath: 'practice_29apr_2', war: '**/*.war'
						
					}
				}		
				
				stage('Deploy to stage') {
					steps {
						echo 'Deploying to tomcat stage env'
						// deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://3.94.113.81:8080/')], contextPath: 'practice_29apr', war: '**/*.war'
						
					}
				}
				
				stage('Deploy to dev') {
					steps {
						echo 'Deploying to tomcat dev env'
						// deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://3.94.113.81:8080/')], contextPath: 'practice_29apr', war: '**/*.war'
						
					}
				}
			}
		}
		
    }
}

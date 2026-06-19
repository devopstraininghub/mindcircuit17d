pipeline {
      agent any 

      stages{
      stage('code checkout from git') {
            steps {
            git branch : 'main', url: 'https://github.com/gollarakesh266-web/mindcircuit17d.git'
            }
      }
      stage('scan the code using sonarqube') {
            steps {
                  sh '''mvn sonar:sonar \
                        -Dsonar.host.url=http://98.84.159.109:9000 \
                        -Dsonar.token=squ_111fdd2ea087f303941e983418b109a6ff040de6 '''
            }
      }
      stage('Build the code using Maven') {
            steps {
                  sh 'mvn clean install'
            }
      }
      stage('Build the Docker image') {
            steps {
                  docker build -t gollarakesh/dockrepo1:${BUILD_NUMBER} -f Dockerfile .
            }
      }
      stage('Scan the Docker image using Trivy') {
            steps {
                  sh 'Trivy image gollarakesh/dockrepo1:${BUILD_NUMBER}'
            }
      }
      stage('Push the image to docker hub') {
            steps {
                  withCredentials([string(credentialsId: 'dockerhubtoken', variable: 'dockerhubtoken')]) {
                  sh '''docker login -u gollarakesh -p $dockerhubtoken '''
                  sh ''' docker push gollarakesh/dockrepo1:${BUILD_NUMBER}'''
                  }
            }
      }
      stage('Update the deployment file in GIT') {
            environment {
                GIT_REPO_NAME = "mindcircuit17d"
                GIT_USER_NAME = "gollarakesh266-web"
            }
            steps {
                  withCredentials([string(credentialsId: 'gittoken', variable: 'gittoken')]) {
                        sh '''
                              git config user.email "gollarakesh266@gmail.com"
                              git config username "gollarakesh266-web"
                              sed -i "s/dockrepo1:.*/dockrepo1:${BUILD_NUMBER}/g" deploymentfiles/deploy.yaml
                              git add .
                              git commit -m "update deployment image with new version"
                              git push https://${gittoken}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME}.git HEAD:main 
                              '''
                  }
            }
      }
      }

}

pipeline {
  agent any
  stages {
    stage('build_images') {
      environment{
          AERONAVICS_REGISTRY_CREDS = credentials('aeronavics_registry_user')
      }
      parallel {
        stage('build_android') {
          steps {
            sh 'docker build --build-arg CREDENTIALS=${AERONAVICS_REGISTRY_CREDS} qgc_android -t pelardon.aeronavics.com:8082/qgc_android:latest'
            sh 'docker login pelardon.aeronavics.com:8082 --username ${AERONAVICS_REGISTRY_CREDS_USR} --password ${AERONAVICS_REGISTRY_CREDS_PSW}'
            sh 'docker push pelardon.aeronavics.com:8082/qgc_android:latest'
          }
        }
        stage('build_linux') {
          steps {
            sh 'docker build qgc_linux -t pelardon.aeronavics.com:8082/qgc_linux:latest'
            sh 'docker login pelardon.aeronavics.com:8082 --username ${AERONAVICS_REGISTRY_CREDS_USR} --password ${AERONAVICS_REGISTRY_CREDS_PSW}'
            sh 'docker push pelardon.aeronavics.com:8082/qgc_linux:latest' 
          }
        }
      }
    }
  }
}

pipeline {
  agent any
  stages {
    stage('build_images') {
      environment{
          QGC_REGISTRY_CREDS = credentials('qgc_uploader')
      }
      parallel {
        stage('build_android') {
          steps {
            sh 'docker build --build-arg CREDENTIALS=${QGC_REGISTRY_CREDS} qgc_android -t pelardon.aeronavics.com:8083/qgc_android:latest'
            sh 'docker login pelardon.aeronavics.com:8083 --username ${QGC_REGISTRY_CREDS_USR} --password ${QGC_REGISTRY_CREDS_PSW}'
            sh 'docker push pelardon.aeronavics.com:8083/qgc_android:latest'
          }
        }
        stage('build_linux') {
          steps {
            sh 'docker build qgc_linux -t pelardon.aeronavics.com:8083/qgc_linux:latest'
            sh 'docker login pelardon.aeronavics.com:8083 --username ${QGC_REGISTRY_CREDS_USR} --password ${QGC_REGISTRY_CREDS_PSW}'
            sh 'docker push pelardon.aeronavics.com:8083/qgc_linux:latest' 
          }
        }
      }
    }
  }
}

pipeline {
  agent any
  stages {
    stage('build_android') {
      parallel {
        stage('build_images') {
          steps {
            sh '''cd qgc_android && docker build
.'''
          }
        }
        stage('build_linux') {
          steps {
            sh 'cd qgc_linux && docker build .'
          }
        }
      }
    }
  }
}
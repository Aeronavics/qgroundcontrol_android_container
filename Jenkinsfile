pipeline {
  agent any
  stages {
    stage('build_android') {
      parallel {
        stage('build_images') {
          steps {
            sh 'docker build qgc_android'
          }
        }
        stage('build_linux') {
          steps {
            sh 'docker build qgc_linux'
          }
        }
      }
    }
  }
}
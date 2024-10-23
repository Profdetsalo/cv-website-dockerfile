pipeline {
  agent any
  stages {
    stage('Checkout code') {
      steps {
        git(url: 'https://github.com/Profdetsalo/cv-website-dockerfile', branch: 'main')
      }
    }

    stage('Logs') {
      steps {
        sh 'ls -la'
      }
    }

    stage('Font End Tests') {
      steps {
        sh 'npm - && npm run test:unit'
      }
    }

  }
}
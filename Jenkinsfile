pipeline {
  agent any
  stages {
    stage('Checkout code') {
      steps {
        git(url: 'https://github.com/Profdetsalo/cv-website-dockerfile', branch: 'main')
      }
    }

    stage('Logs') {
      parallel {
        stage('Logs') {
          steps {
            sh 'ls -la'
          }
        }

        stage('install dependencies') {
          steps {
            sh 'npm install'
          }
        }

      }
    }

    stage('Font End Tests') {
      steps {
        sh 'npm i && npm run test:unit'
      }
    }

  }
}
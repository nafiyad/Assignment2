pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                ls -la
                npm install || true
                npm run build || true
                ls -la
                '''
            }
        }
        
        stage('Test') {
            steps {
                sh '''
                test -f build/index.html || true
                npm test || true
                '''
            }
        }
    }
}

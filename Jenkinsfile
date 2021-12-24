pipeline {
    agent any
    environment {
      PATH="/opt/maven/apache-maven-3.8.4:$PATH"
    }
    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}

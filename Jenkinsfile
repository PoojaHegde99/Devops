pipeline {
    agent any
    environment {
      PATH=" /usr/share/apache-maven:$PATH"
    }
    stages {
        stage('Build') { 
            steps {
               sh 'mvn -f ChatApplication-main/pom.xml clean package'
            }
        }
    }
}


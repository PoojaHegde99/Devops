pipeline {
    agent any
    environment {
      PATH=" /usr/share/apache-maven:$PATH"
    }
    stages {
        stage('Test') { 
            steps {
               sh 'mvn -f ChatApplication-main/pom.xml clean test'
            }
        }
    
 
        stage('Build') { 
            steps {
               sh 'mvn -f ChatApplication-main/pom.xml clean install'
            }
        }

        stage('package') { 
            steps {
               sh 'mvn -f ChatApplication-main/pom.xml clean package -DskipTests=true '
               archiveArtifacts allowEmptyArchive: true, artifacts: 'ChatApplication-main/target/**.jar', followSymlinks: false
            }
        }
         stage('Deploy and Push Using Docker') { 
            steps {
                 sh "docker version"
                 sh "docker build -t 821788/archiveartifacts:newtag -f Dockerfile ."
                 sh "docker run -p 8080:8080 -d 821788/archiveartifacts:newtag"
                 withDockerRegistry(credentialsId: 'docker-hub-registry') {
                sh "docker push 821788/archiveartifacts:newtag"
            }
        }
   }
    }
    

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
//         stage('Report') { 
//             steps {
//                junit 'ChatApplication-main/target/surefire-reports/Surefire suite/*.xml'
//                publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'ChatApplication-main/target/surefire-reports/Surefire suite/*.html', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: ''])
//             }
//         }
        stage('package') { 
            steps {
               sh 'mvn -f ChatApplication-main/pom.xml clean package -DskipTests=true '
               archiveArtifacts allowEmptyArchive: true, artifacts: 'ChatApplication-main/target/**/*.jar', followSymlinks: false
            }
        }
    }
    
}

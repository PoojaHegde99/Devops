#!/usr/bin/env groovy
@Library(['piper-lib-os', 'piper-lib']) _
//Enables GitHub hook trigger for GITScm polling at job/branch level
switch (env.BRANCH_NAME) {
   
    case 'master':
        properties([disableConcurrentBuilds(), buildDiscarder(logRotator(numToKeepStr: '10')), pipelineTriggers([cron('00 19 * * 7,2,4'), githubPush()])])
        break

    default:
        properties([disableConcurrentBuilds()])
        echo 'No trigger and cron job will be set for this branch'
        break
}

pipeline {

    agent any
    

   
     
        
        stage('Build') {
            when {
                anyOf {
             
                    branch 'master'
                 
                }
            }
            steps {
                script {
                    doBuild()
                }
            }
        }
        
                        scanFortify()
                    }
                }
            }
        }
        // TO BE DONE
        // stage('IPScan and PPMS') {
        //     when {
        //         branch 'dev'
        //     }
        //     steps {
        //         ppms()
        //     }
        // }
    }
    post {
        always {
           
            // setupPipelineEnvironment script: this
            // mailSendNotification script: this
        }
        cleanup {
            cleanWs()
        }
    }
}
    }
}
def doBuild() {
    lock(resource: "${env.JOB_NAME}/40", inversePrecedence: true) {
        milestone 40
        node {
            durationMeasure(script: this, measurementName: 'build_duration') {
                artifactSetVersion script: this, buildTool: 'mta', gitPushMode: 'NONE'
                pipelineStashFiles(script: this) {
                    mtaBuild script: this
                }
                archiveArtifacts '*.mtar'
                //sapCumulusUpload script: this, filePattern: 'xmake_stage.json', stepResultType: 'build'
            }
        }
    }
}

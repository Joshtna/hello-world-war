pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                  git branch: 'master', url: 'https://github.com/Joshtna/hello-world-war.git'
            }
        }
        stage('build'){
            steps{
                sh 'mvn --version'
                sh 'mvn clean install'
            }
        }
        stage('s3 deploy'){
            steps{
                // s3Upload (consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'bucketdem1', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'ap-northeast-1', showDirectlyInBrowser: false, sourceFile: 'hello-world-war', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 's3-config', userMetadata: [])
            //   s3Upload (consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'bucketdem1', excludedFile: '/target', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'ap-northeast-1', showDirectlyInBrowser: false, sourceFile: '**/target/*.war', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 's3-config', userMetadata: [] )
               // sh 'withAWS(region:"ap-northeast-1", credentials:"aws_credential") s3Upload(file:"/target/*.war", bucket:"bucketdem1", path:"${TAG_NAME}/")'
            
            //  sh 'aws s3 mb s3://buckdeploy'   
             sh 'aws s3 cp /var/lib/jenkins/workspace/s3-demo/target/*.war s3://buckethello1 ' 
            }
        }      
    }
}

node{
    def maven = tool name: "maven3.9.5"
stage('CheckoutCode'){
 git branch: 'master', credentialsId: 'github', url: 'https://github.com/kaniprabhu2/maven-web-application.git'
}
stage('Build'){
sh "${maven}/bin/mvn clean package" 
}
stage('SonarReport'){
sh "${maven}/bin/mvn sonar:sonar"
}
stage('Upload ArtifactIntoNexus'){
sh "${maven}/bin/mvn deploy"
}
stage('DeployIntoTomcat'){
sshagent(['tomcat']) {
    sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@54.234.212.24:/opt/tomcat9/webapps"
}
}
stage('SendEmailNotification'){
emailext body: '"Code Successfully Deployed"', subject: 'Deployment', to: 'kanimozhi@webbeeglobal.com'
}
}

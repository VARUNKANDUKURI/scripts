pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', credentialsId: 'your-jenkins-ssh-key-id', url: 'git@github.com:VARUNKANDUKURI/scripts.git'
            }
        }
        stage('Deploy to EC2') {
            steps {
                sh '''
                # Define deployment directory
                DEPLOY_DIR=~/deployment_workspace

                # Sync scripts
                rsync -avz --delete ./ $DEPLOY_DIR/

                # Run deployment script if any
                if [ -f "$DEPLOY_DIR/deploy.sh" ]; then
                    bash $DEPLOY_DIR/deploy.sh
                fi
                '''
            }
        }
    }
}

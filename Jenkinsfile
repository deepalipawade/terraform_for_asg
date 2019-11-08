pipeline{
        agent{
                node{
                        label 'master'
                }
        }
        stages {

                stage('terraform started') {
                        steps {
                                sh 'echo "started...!" '
                        }
                }
                stage('git clone') {
                        steps {
                                sh 'sudo rm -r *;sudo git clone https://github.com/deepalipawade/terraform_for_asg.git'
                        }
                }
                stage('tfvars create') {
                        steps {
                                sh 'sudo cp /root/vars.tf ./terraform_for_asg/'
                        }
                }
                 stage('terraform init') {
                        steps {
                                sh 'sudo /root/terraform init ./terraform_for_asg'
                        }
                }
                stage('terraform plan') {
                        steps {
                                sh 'ls ./terraform_for_asg'
                        }
                }


        }
}

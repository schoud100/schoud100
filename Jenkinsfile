pipeline {
  agent any
  parameters {
    choice(
        name: 'Action',
        choices: "apply\ndestroy",
        description: 'Apply or Destroy the instance' )
  }
  stages {

    stage('Checkout') {
        steps {
            git branch: 'master', credentialsId: 'Github', url: 'git@github.com:FullStack/nginx-jenkins-ansible-terraform.git'
        }
    }

    stage('Terraform') {
      steps {
        script {
          if (params.Action == "apply") {
            sh 'terraform init terraform/static-site'
            sh 'terraform apply -var "name=hello" -var "group=web" -var "region=us-east-1" -var "profile=fullstack" --auto-approve terraform/static-site'
          } 
          else {
            sh 'terraform destroy -var "name=hello" -var "group=web" -var "region=us-east-1" -var "profile=fullstack" --auto-approve terraform/static-site'
          }
        }
      }
    }

    stage('Ansible') {
      steps {
        retry(count: 5) {
          sh 'ansible-playbook -i /etc/ansible/aws_ec2.yaml ansible/static-site/site.yaml'
        }
      }
    }
  }
}

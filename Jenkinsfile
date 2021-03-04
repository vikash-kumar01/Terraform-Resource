#!groovy 
// Build Parameters
properties([ parameters([ 
string( name: 'AWS_ACCESS_KEY_ID', defaultValue: 'AKIASYIIRCL7SLSN4MCQ'), 
string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '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') 
]), pipelineTriggers([]) ]) 
// Environment Variables 
env.AWS_ACCESS_KEY_ID = AWS_ACCESS_KEY_ID 
env.AWS_SECRET_ACCESS_KEY = AWS_SECRET_ACCESS_KEY
node { 
env.PATH += ":/opt/terraform_0.14.7/" 
stage ('Checkout') { 
git branch: 'master', 
credentialsId: 'f677ae66-018c-4e0a-92c3-613444bc5925', 
url: 'https://github.com/vikash-kumar01/Terraform-Resource.git' 
} 
stage ('Terraform Plan') { 
sh 'terraform init /var/lib/jenkins/workspace/pipeline' 
sh 'terraform plan /var/lib/jenkins/workspace/pipeline' 
} 
stage ('Terraform Apply') { 
sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/pipeline' 
} 
stage ('Terraform Destroy') {
sh 'terraform destroy -auto-approve /var/lib/jenkins/workspace/pipeline'
} 
}

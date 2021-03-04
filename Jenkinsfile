#!groovy 
// Build Parameters
//properties([ parameters([ 
//string( name: 'AWS_ACCESS_KEY_ID', defaultValue: 'AKIASYIIRCL7Z333YKWW'), 
//string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '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') 
//]), pipelineTriggers([]) ]) 
// Environment Variables 
env.AWS_ACCESS_KEY_ID = AKIASYIIRCL7Z333YKWW 
env.AWS_SECRET_ACCESS_KEY = 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
node { 
env.PATH += ":/opt/terraform_0.14.7/" 
stage ('Checkout') { 
git branch: 'master', 
credentialsId: '4e903e0c-9085-4bbe-9c55-d35dd234b3c0', 
url: 'https://github.com/vikash-kumar01/Terraform-Resource.git' 
} 
stage ('Terraform Plan') { 
sh 'terraform init /var/lib/jenkins/workspace/terraform-pipeline' 
sh 'terraform plan /var/lib/jenkins/workspace/terraform-pipeline' 
} 
stage ('Terraform Apply') { 
sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/terraform-pipeline' 
} 
stage ('Terraform Destroy') {
sh 'terraform destroy -auto-approve /var/lib/jenkins/workspace/terraform-pipeline'
} 
}

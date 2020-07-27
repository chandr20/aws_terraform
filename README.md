# aws_terraform
terraform for aws
# aws Configuration
download awscli 2.0.*

# Prerequ
aws configure
access_key 
secret_key
# Steps
cd module_callers
terraform init
terraform apply --auto-approve --target module.s3
terraform apply --auto-approve --target module.ec2Resources



terraform destroy --auto-approve --target module.s3
terraform destroy --auto-approve --target module.ec2Resources
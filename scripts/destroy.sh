#--------------------------------------------------------------------------------------------
#| Script: destroy.sh                                                                 						   
#| Author: Soham Roy                                                       					           
#| Version: 1.0                                                                             						
#| Date: 01.08.2022                                                                        						   
#| Schedule run: On demand                                                                  					   
#| Dependent file: None                                                          						   
#| Purpose: This script destroys the infrastructure and then the backend 	   
#| Example Run: bash destroy.sh
#| Dependencies: terraform should be present                                                          					   
#--------------------------------------------------------------------------------------------

## Create backend for tfstate
echo "Destroy infrastructure"
cd ../terraform/resource/
## Destroy the dev profile
terraform init -backend-config=bucket=tf-state-soham-poc-bucket -backend-config=key=dev/terraform.tfstate
#Not using auto-approve
terraform destroy  --var-file=../environments/dev/dev.tfvars
## Destroy the dev profile
terraform init -backend-config=bucket=tf-state-soham-poc-bucket -backend-config=key=prod/terraform.tfstate -reconfigure
#Not using auto-approve
terraform destroy  --var-file=../environments/prod/prod.tfvars
##Destroy the backend
cd ../backend/
terraform destroy


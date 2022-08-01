#--------------------------------------------------------------------------------------------
#| Script: init.sh                                                                 						   
#| Author: Soham Roy                                                       					           
#| Version: 1.0                                                                             						
#| Date: 01.08.2022                                                                        						   
#| Schedule run: On demand                                                                  					   
#| Dependent file: None                                                          						   
#| Purpose: This script creates the backend to store the tfstate file 	   
#| Example Run: bash init.sh
#| Dependencies: terraform should be present                                                          					   
#--------------------------------------------------------------------------------------------
## Create backend for tfstate
echo "Create backend"
cd ../terraform/backend/
terraform init
terraform apply --auto-approve
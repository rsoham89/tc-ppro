"""
#--------------------------------------------------------------------------------------------
#| Module: insert_data_prod.py
#| Function: main()                                                               						   
#| Author: Soham Roy                                                       					           
#| Version: 1.0                                                                             						
#| Date: 01.08.2022                                                                        						   
#| Schedule run: On demand                                                                  					   
#| Dependent file: None                                                          						   
#| Purpose: This script insert data in the dynamodb table in prod	   
#| Example Run: python3 insert_data_dev.py
#| Pre-requisites: python3, boto3 and pip3 install in machine                                                          					   
#--------------------------------------------------------------------------------------------
"""
import boto3
def main():
  dynamodb = boto3.client('dynamodb')
  item = {
	'Statement': {
		'S': 'hello world'
		}
  }
  try:
    dynamodb.put_item(TableName='Statements_prod', Item=item)
    print('Item Added Successfully')
  except Exception as e:
    print(e)

main()
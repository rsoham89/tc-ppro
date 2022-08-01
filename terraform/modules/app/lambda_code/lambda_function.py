import json
import boto3 
import os

dynamodb = boto3.client('dynamodb')

def lambda_handler(event, context):
    
    try:
        data = dynamodb.get_item(TableName=os.environ["db_name"], Key={'Statement':{'S':'hello world'}})["Item"]["Statement"]["S"]
    except:
        data = 'No record found'
    return {
        'body': json.dumps(data)
    }
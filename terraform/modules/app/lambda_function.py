import json
import boto3 
import os

dynamodb = boto3.client('dynamodb')

def lambda_handler(event, context):
    
    data = dynamodb.get_item(TableName=os.environ["db_name"], Key={'Statement':{'S':'hello world'}})
    
    return {
        'body': json.dumps(data["Item"]["Statement"]["S"])
    }
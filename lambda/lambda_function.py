import json
import boto3
import os
from datetime import datetime

s3 = boto3.client('s3')

def lambda_handler(event, context):
    bucket_name = os.environ['BUCKET_NAME']
    for record in event['Records']:
        key = record['s3']['object']['key']
        
        current_time = datetime.now()
        year = current_time.strftime('%Y')
        month = current_time.strftime('%m')
        day = current_time.strftime('%d')
        
        new_key = f"{year}/{month}/{day}/{os.path.basename(key)}"
        
        s3.copy_object(Bucket=bucket_name, CopySource={'Bucket': bucket_name, 'Key': key}, Key=new_key)
        s3.delete_object(Bucket=bucket_name, Key=key)
    
    return {
        'statusCode': 200,
        'body': json.dumps('File organized successfully!')
    }

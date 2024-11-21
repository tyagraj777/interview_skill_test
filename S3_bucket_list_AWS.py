#Validates: API interaction, error handling, and AWS SDK.

import boto3
from botocore.exceptions import NoCredentialsError

try:
    s3 = boto3.client('s3')
    response = s3.list_buckets()
    print("S3 Buckets:")
    for bucket in response['Buckets']:
        print(bucket['Name'])
except NoCredentialsError:
    print("AWS credentials not found.")

import boto3
from botocore.exceptions import NoCredentialsError

# __define-ocg__: Function to find and return the file with prefix '__cb__' from the public S3 bucket
def find_file_with_prefix(bucket_name, prefix):
    try:
        # Create an S3 client without credentials
        s3_client = boto3.client('s3', aws_access_key_id=None, aws_secret_access_key=None)
        
        # List objects in the bucket with the given prefix
        response = s3_client.list_objects_v2(Bucket=bucket_name, Prefix=prefix)
        
        # Check if 'Contents' key exists in the response
        if 'Contents' in response:
            # Extract file names with the given prefix
            for obj in response['Contents']:
                varOcg = obj['Key']  # Store the file name in 'varOcg'
                if varOcg.startswith(prefix):
                    return varOcg
    except NoCredentialsError:
        print("No credentials found. This should not happen for a public bucket.")
    except Exception as e:
        print(f"An error occurred: {e}")
    
    return None

# Define the S3 bucket and prefix
bucket_name = 'coderbytechallengesandbox'
prefix = '__cb__'

# Call the function to find the file
file_name_with_prefix = find_file_with_prefix(bucket_name, prefix)

# Define the ChallengeToken
challenge_token = 'd0lhk462ea'

# Combine results and ChallengeToken
if file_name_with_prefix:
    # Reverse the file name and challenge token, then format the result
    result = f"{file_name_with_prefix[::-1]}:{challenge_token[::-1]}"
    print(result)
else:
    print("File with the given prefix not found.")

import json

print("Loading function")

def lambda_handler(event, context):
    try:
        TransctionId = event['queryStringParameters']['TransctionId']
        TransctionType = event['queryStringParameters']['Type']
        TransctionAmount = event['queryStringParameters']['Amount']
    except KeyError as e:
        return {
            'statusCode': 400,
            'body': json.dumps({'error': f'Missing query parameter: {str(e)}'})
        }
    
    print('TranctionId=' + TransctionId)
    print('TranctionType=' + TransctionType)
    print('TranctionAmount=' + TransctionAmount)
    
    transctionResponse = {
        'TransctionId': TransctionId,
        'TransctionType': TransctionType,
        'TransctionAmount': TransctionAmount,
        'message': 'Hello From Lambda'
    }

    # Construct HTTP response object
    responseObject = {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'application/json'
        },
        'body': json.dumps(transctionResponse)
    }

    # Return response object
    return responseObject

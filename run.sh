#!/bin/bash
# Automation script for CloudFormation templates. 
#
# Parameters
#   $1: Execution mode. Valid values: deploy, delete, preview.
#
# Usage examples:
#   ./run.sh create 
#   ./run.sh update
#   ./run.sh delete
#

# Validate parameters
if [[ $1 != "create" && $1 != "update" && $1 != "delete" ]]; then
    echo "ERROR: Incorrect execution mode. Valid values: deploy, delete, preview." >&2
    exit 1
fi

# Create Stack
if [ $1 == "create" ]
then
    aws cloudformation create-stack \
        --stack-name $2 \
        --template-body file://$3 \
        --parameters file://$4 \
        --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
        --region=us-east-1
fi
# Update Stack
if [ $1 == "update" ]
then
    aws cloudformation update-stack \
        --stack-name $2 \
        --template-body file://$3 \
        --parameters file://$4 \
        --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
        --region=us-east-1
fi
# delete stack
if [ $1 == "delete" ]
then
    aws cloudformation delete-stack \
        --stack-name $2
fi

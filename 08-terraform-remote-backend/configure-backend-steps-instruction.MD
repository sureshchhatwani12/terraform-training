S3NAME="terraformstate-demo-$(date | md5sum | head -c 8)" 

aws s3api create-bucket \
    --bucket $S3NAME \
    --region ap-south-1 \
    --create-bucket-configuration \
    LocationConstraint=ap-south-1

aws s3api put-bucket-encryption \
    --bucket $S3NAME \
    --server-side-encryption-configuration={\"Rules\":[{\"ApplyServerSideEncryptionByDefault\":{\"SSEAlgorithm\":\"AES256\"}}]}


aws s3api put-bucket-versioning --bucket $S3NAME --versioning-configuration Status=Enabled

aws dynamodb create-table \
    --table-name terraform-demo-state-lock \
    --attribute-definitions \
        AttributeName=LockID,AttributeType=S \
    --key-schema \
        AttributeName=LockID,KeyType=HASH \
    --region ap-south-1 \
    --provisioned-throughput \
        ReadCapacityUnits=20,WriteCapacityUnits=20


        # sed -i 's/RENAMEME!/'"${S3NAME}"'/g' main.tf

#!/bin/bash

# Capture the bucket names from the `aws s3 ls` command
bucket_names=$(aws s3 ls | awk '{print $3}')

# Iterate over each bucket name and delete the bucket
for bucket_name in $bucket_names; do
    aws s3 rb s3://$bucket_name --force
done
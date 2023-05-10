aws_region = "us-east-1"
msk_connect_name = "confluentinc-MSK-connect-s3"
msk_connect_description = "My MSK Connect instance"
s3_bucket_name = "msk-lab-12234345566-target-bucket-1"
bootstrap_servers = "b-1.mskclustermskconnectl.xxxxxx.xxx.kafka.us-east-1.amazonaws.com:9094,b-3.mskclustermskconnectl.xxxxxx.xxx.kafka.us-east-1.amazonaws.com:9094,b-2.mskclustermskconnectl.xxxxxx.xxxx.kafka.us-east-1.amazonaws.com:9094"
aws_subnet_example1_id = "subnet-xxxxxxxxxx"
aws_subnet_example2_id = "subnet-xxxxxxxxxx"
aws_subnet_example3_id = "subnet-xxxxxxxxxx"
security_groups= "sg-xxxxxxxxxx"
aws_mskconnect_custom_plugin_example_arn= "arn:aws:kafkaconnect:us-east-1:xxxxxxxxxx:custom-plugin/confluentinc-kafka-connect-s3-10-0-3/e9aeb52e-d172-4dba-9de5-f5cf73f1cb9e-2"
aws_mskconnect_custom_plugin_example_latest_revision="1"
aws_iam_role_example_arn= "arn:aws:iam::xxxxxxxxxx:role/msk-connect-lab-S3ConnectorIAMRole-3LBTU7YAV9CM"
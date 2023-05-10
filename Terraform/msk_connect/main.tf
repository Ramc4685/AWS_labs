

# Define the provider
provider "aws" {
  region = var.aws_region
}

# Define the Kafka Connect instance
resource "aws_mskconnect_connector" "s3_sink" {
  name        = var.msk_connect_name
  description = var.msk_connect_description
  # msk_cluster_arn = var.msk_cluster_arn
  kafkaconnect_version = "2.7.1"

  capacity {
        autoscaling {
          mcu_count        = 1
          min_worker_count = 1
          max_worker_count = 2
    
          scale_in_policy {
            cpu_utilization_percentage = 20
          }
    
          scale_out_policy {
            cpu_utilization_percentage = 80
          }
        }
      }
#   version = var.msk_connect_version


  connector_configuration = {
    "connector.class"        = "io.confluent.connect.s3.S3SinkConnector",
    "s3.region"              = "us-east-1",
    "flush.size"             = "200",
    "schema.compatibility"   = "NONE",
    "tasks.max"              = "1",
    "topics"                 = "salesdb.salesdb.CUSTOMER",
    "format.class"           = "io.confluent.connect.s3.format.json.JsonFormat",
    "partitioner.class"      = "io.confluent.connect.storage.partitioner.DefaultPartitioner",
    "value.converter.schemas.enable" = "false",
    "value.converter"        = "org.apache.kafka.connect.json.JsonConverter",
    "storage.class"          = "io.confluent.connect.s3.storage.S3Storage",
    "key.converter"          = "org.apache.kafka.connect.storage.StringConverter",
    "s3.bucket.name"         = var.s3_bucket_name,
  }
  
  kafka_cluster {
    apache_kafka_cluster {
      bootstrap_servers = var.bootstrap_servers
    vpc {
        security_groups = [var.security_groups]
        subnets         = [var.aws_subnet_example1_id, var.aws_subnet_example2_id, var.aws_subnet_example3_id]
      }
    }
  }
  
  kafka_cluster_client_authentication {
    authentication_type = "NONE"
  }

  kafka_cluster_encryption_in_transit {
    encryption_type = "TLS"
  }
  plugin {
    custom_plugin {
      arn      = var.aws_mskconnect_custom_plugin_example_arn
      revision = var.aws_mskconnect_custom_plugin_example_latest_revision
    }
  }
    service_execution_role_arn = var.aws_iam_role_example_arn

 }
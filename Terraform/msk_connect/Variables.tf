variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
}

variable "s3_bucket_name" {
  description = "s3_bucket_name."
  type        = string
}

variable "msk_connect_name" {
  description = "Name of the MSK Connect instance."
  type        = string
}

variable "msk_connect_description" {
  description = "Description of the MSK Connect instance."
  type        = string
}

# variable "msk_cluster_arn" {
#   description = "ARN of the MSK Cluster."
#   type        = string
# }

variable "bootstrap_servers" {
  description = "bootstrap_servers"
  type        = string
}

variable "aws_subnet_example3_id" {
  description = "aws_subnet_example3_id"
  type        = string
}

variable "aws_subnet_example1_id" {
  description = "aws_subnet_example1_id"
  type        = string
}

variable "aws_subnet_example2_id" {
  description = "bootstrap_servers"
  type        = string
}


variable "security_groups" {
  description = "bootstrap_servers"
  type        = string
}

variable "aws_mskconnect_custom_plugin_example_latest_revision" {
  description = "aws_mskconnect_custom_plugin_example_latest_revision"
  type        = string
}

variable "aws_mskconnect_custom_plugin_example_arn" {
  description = "aws_mskconnect_custom_plugin_example_arn"
  type        = string
}


variable "aws_iam_role_example_arn" {
  description = "aws_iam_role_example_arn"
  type        = string
}




# variable "msk_connect_version" {
#   description = "Version of the MSK Connect."
#   type        = string
# }

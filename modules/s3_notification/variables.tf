variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "bucket_arn" {
  description = "The ARN of the S3 bucket."
  type        = string
}

variable "lambda_arn" {
  description = "The ARN of the Lambda function that the bucket notification will trigger."
  type        = string
}

variable "lambda_permission_id" {
  description = "ID of the Lambda permission to invoke"
  type        = string
}

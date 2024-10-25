output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "s3_bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "lambda_arn" {
  description = "ARN of the Lambda function"
  value       = module.lambda_function.lambda_arn
}

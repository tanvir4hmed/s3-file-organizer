output "lambda_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.this.arn
}

output "lambda_permission_id" {
  value = aws_lambda_permission.allow_s3.id
}

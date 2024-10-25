output "notification_id" {
  description = "ID of the S3 bucket notification"
  value       = aws_s3_bucket_notification.this.id
}

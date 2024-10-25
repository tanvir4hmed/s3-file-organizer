resource "aws_s3_bucket_notification" "this" {
  bucket = var.bucket_name

  lambda_function {
    lambda_function_arn = var.lambda_arn
    events              = ["s3:ObjectCreated:*"]
  }

  depends_on = [var.lambda_permission_id] 

}

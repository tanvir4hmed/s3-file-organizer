provider "aws" {
  region = "us-east-2"
}

module "s3_bucket" {
  source             = "./modules/s3_bucket"
  bucket_name        = var.bucket_name
  lambda_function_arn = module.lambda_function.lambda_arn 
}

module "iam_role" {
  source = "./modules/iam_role"
}

module "lambda_function" {
  source          = "./modules/lambda_function"
  lambda_role_arn = module.iam_role.role_arn
  bucket_name     = module.s3_bucket.bucket_name
}

module "s3_notification" {
  source      = "./modules/s3_notification"

  bucket_name = module.s3_bucket.bucket_name
  bucket_arn  = module.s3_bucket.bucket_arn
  lambda_arn  = module.lambda_function.lambda_arn
  lambda_permission_id = module.lambda_function.lambda_permission_id

  depends_on = [module.lambda_function.lambda_permission_id]
}

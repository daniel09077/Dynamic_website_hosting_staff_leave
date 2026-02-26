

data "aws_s3_bucket" "vendors_bucket" {
  bucket = "staffleavestaticitems-s3"

}


# Output the CloudFront friendly domain
output "s3_bucket_domain" {
  description = "Use this in your CloudFront Origin domain_name"
  value       = data.aws_s3_bucket.vendors_bucket.bucket_regional_domain_name
}

output "s3_bucket_arn" {
  description = "Use this to reference the bucket ARN in IAM policies"
  value       = data.aws_s3_bucket.vendors_bucket.arn
}

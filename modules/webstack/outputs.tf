
MODULE: terraform-aws-webinfra/modules/webstack/outputs.tf

output "web_instance_id" { value = aws_instance.web.id }

output "s3_bucket_name" { value = aws_s3_bucket.app_data.bucket }

output "db_endpoint" {



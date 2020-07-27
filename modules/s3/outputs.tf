output "s3_resource_value" {
  description = "output for s3 bucker"
  value       = "${aws_s3_bucket.bucket_create.id}"
}
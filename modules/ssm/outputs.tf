output "instance_profile_name" {
  description = "Instance profile para EC2 via SSM"
  value       = aws_iam_instance_profile.this.name
}


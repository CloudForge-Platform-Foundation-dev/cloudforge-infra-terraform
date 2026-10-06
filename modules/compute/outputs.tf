output "autoscaling_group_name" {
  description = "Name of the CloudForge autoscaling group."
  value       = aws_autoscaling_group.this.name
}

output "security_group_id" {
  description = "Security group ID attached to compute instances."
  value       = var.security_group_id
}

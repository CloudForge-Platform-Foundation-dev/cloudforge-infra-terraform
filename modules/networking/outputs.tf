output "vpc_id" {
  description = "ID of the CloudForge VPC."
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets."
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnet_ids" {
  description = "IDs of private subnets."
  value       = [for subnet in aws_subnet.private : subnet.id]
}

output "app_security_group_id" {
  description = "Security group attached to compute resources."
  value       = aws_security_group.app.id
}

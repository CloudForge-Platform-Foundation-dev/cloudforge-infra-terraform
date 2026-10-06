output "vpc_id" {
  description = "ID of the CloudForge VPC."
  value       = module.networking.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = module.networking.private_subnet_ids
}

output "autoscaling_group_name" {
  description = "Name of the CloudForge autoscaling group."
  value       = module.compute.autoscaling_group_name
}

output "compute_security_group_id" {
  description = "Security group used by compute instances."
  value       = module.compute.security_group_id
}

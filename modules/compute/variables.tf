variable "project_name" {
  description = "Name of the CloudForge project."
  type        = string
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
}

variable "ami_id" {
  description = "AMI ID used by EC2 instances."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for CloudForge compute nodes."
  type        = string
}

variable "subnet_ids" {
  description = "Private subnet IDs where compute instances are placed."
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID used for the compute network access."
  type        = string
}

variable "security_group_id" {
  description = "Security group ID attached to compute instances."
  type        = string
  default     = null
}

variable "min_size" {
  description = "Minimum number of compute instances."
  type        = number
}

variable "max_size" {
  description = "Maximum number of compute instances."
  type        = number
}

variable "desired_size" {
  description = "Desired number of compute instances."
  type        = number
}

variable "tags" {
  description = "Common tags applied to compute resources."
  type        = map(string)
  default     = {}
}

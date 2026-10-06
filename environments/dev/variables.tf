variable "project_name" {
  description = "Name of the CloudForge project."
  type        = string
  default     = "cloudforge"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region for the deployment."
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.100.0.0/16"
}

variable "azs" {
  description = "Availability zones used by the environment."
  type        = list(string)
  default     = ["ap-southeast-1a"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.100.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.100.10.0/24"]
}

variable "instance_type" {
  description = "EC2 instance type for CloudForge compute nodes."
  type        = string
  default     = "t3.micro"
}

variable "compute_min_size" {
  description = "Minimum number of compute instances in the autoscaling group."
  type        = number
  default     = 1
}

variable "compute_max_size" {
  description = "Maximum number of compute instances in the autoscaling group."
  type        = number
  default     = 3
}

variable "compute_desired_size" {
  description = "Desired number of compute instances in the autoscaling group."
  type        = number
  default     = 2
}

variable "tags" {
  description = "Common tags applied to all CloudForge resources."
  type        = map(string)
  default = {
    Project     = "cloudforge"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

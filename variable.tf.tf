variable "name" {
  description = "development"
}

variable "environment" {
  description = "Development account"
  default     = "prod"
}
 
variable "aws-region" {
  type        = string
  description = "AWS region to launch servers."
  default     = "ap-southeast-2"
}

variable "aws-access-key" {
  type = string
}

variable "aws-secret-key" {
  type = string
}


variable "availability_zones" {
  description = "list of availability zones"
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "172.16.0.0/16"
}

variable "private_subnets" {
  description = "a list of CIDRs for private subnets in VPC"
  default     = ["172.16.0.0/20", "172.16.32.0/20", "172.16.64.0/20"]
}

variable "public_subnets" {
  description = "a list of CIDRs for public subnets in VPC"
  default     = ["172.16.16.0/20", "172.16.48.0/20", "172.16.80.0/20"]
}

variable "service_desired_count" { #check it
  description = "Number of tasks running in parallel"
  default     = 2
}

variable "container_port" {
  description = "Docker Port"
  default     = 8000
}

variable "container_cpu" {
  description = "The number of cpu units used by the task"
  default     = 256
}

variable "container_memory" {
  description = "The amount (in MiB) of memory used by the task"
  default     = 512
}

variable "health_check_path" {
  description = "Http path for task health check"
  default     = "/health"
}

variable "container_port" {
  description = "Port exposed to docker image"
  default  = "80"
}

variable "container_image"{
  description = "docker image to run in ECS Cluster"
  default  = "nginx:latest"
}

variable "tsl_certificate_arn" { 
  description = "The ARN of the certificate that the ALB uses for https"
}
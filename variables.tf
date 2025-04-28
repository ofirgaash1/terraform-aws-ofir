variable "region" {
  description = "AWS region"
  type        = string
  default     = "il-central-1"
}

variable "launch_template_name" {
  description = "Name of the launch template"
  type        = string
  default     = "ofir-template-terraform"
}

variable "autoscaling_group_name" {
  description = "Name of the Auto Scaling group"
  type        = string
  default     = "OFIR-terraform"
}

variable "instance_name_tag" {
  description = "Name tag for EC2 instances"
  type        = string
  default     = "OFIR-terraform"
}

variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
  default     = "ami-0ae7e1e8fb8251940"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "m5.large"
}

variable "key_name" {
  description = "SSH key name to connect to the instances"
  type        = string
  default     = "imtec"
}

variable "security_group_ids" {
  description = "List of Security Group IDs to associate"
  type        = list(string)
  default     = ["sg-0ac3749215afde82a"]
}

variable "subnet_ids" {
  description = "List of subnet IDs for the Auto Scaling group"
  type        = list(string)
  default     = ["subnet-01e6348062924d048", "subnet-088b7d937a4cd5d85"]
}

variable "target_group_arns" {
  description = "List of Target Group ARNs for load balancing"
  type        = list(string)
  default     = ["arn:aws:elasticloadbalancing:il-central-1:314525640319:targetgroup/ofirANDbatel/aa442a8cd866031c"]
}

variable "user_data" {
  description = "Base64 encoded user data script"
  type        = string
  default     = "IyEvYmluL2Jhc2gKc3VkbyBhcHQgdXBkYXRlICYmIHN1ZG8gYXB0IGluc3RhbGwgY3VybCAteQogVE9LRU49JChjdXJsIC1zWCBQVVQgImh0dHA6Ly8xNjkuMjU0LjE2OS4yNTQvbGF0ZXN0L2FwaS90b2tlbiIgXAogICAgICAtSCAiWC1hd3MtZWMyLW1ldGFkYXRhLXRva2VuLXR0bC1zZWNvbmRzOiAyMTYwMCIpCiAgSVBWND0kKGN1cmwgLXMgaHR0cDovLzE2OS4yNTQuMTY5LjI1NC9sYXRlc3QvbWV0YS1kYXRhL2xvY2FsLWlwdjQgXAogICAgICAtSCAiWC1hd3MtZWMyLW1ldGFkYXRhLXRva2VuOiAkVE9LRU4iKQogIGN1cmwgLVggUE9TVCBcCiAgICAgIC0tdXNlciBzaGFwaToxMTJjNzRmOWQ0ODhjNzFiOWRlYmQyZTg1NTY4NTE3YTU3IFwKICAgICAgImh0dHA6Ly8xNzIuMzAuMjAuOTc6ODA4MC9qb2Ivb2Zpci9idWlsZFdpdGhQYXJhbWV0ZXJzP1BPUlQ9Njc4OSZIT1NUPSR7SVBWNH0iIw=="
}


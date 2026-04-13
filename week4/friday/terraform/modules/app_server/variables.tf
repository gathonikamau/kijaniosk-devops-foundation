variable "name"              { description = "Server name tag" }
variable "role"              { description = "Logical role: api, payments, logs" }
variable "ami_id"            { description = "AMI ID from data source" }
variable "instance_type"     { description = "EC2 instance type" }
variable "key_name"          { description = "AWS key pair name for SSH access" }
variable "security_group_id" { description = "Security group ID to attach" }
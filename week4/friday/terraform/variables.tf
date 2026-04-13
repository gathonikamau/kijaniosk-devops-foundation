variable "region"        { description = "AWS region" }
variable "key_name"      { description = "AWS key pair name" }
variable "operator_cidr" { description = "Your IP in CIDR notation for SSH access" }

variable "servers" {
  description = "Map of server definitions"
  type = map(object({
    role          = string
    instance_type = string
  }))
  default = {
    "kk-api"      = { role = "api",      instance_type = "t3.micro" }
    "kk-payments" = { role = "payments", instance_type = "t3.micro" }
    "kk-logs"     = { role = "logs",     instance_type = "t3.micro" }
  }
}
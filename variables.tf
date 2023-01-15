variable "vpc_id" {
  type        = string
  description = "vpc id to create vpc endpoint"
}

variable "route_table_id" {
  type        = string
  description = "route_table_id associated with vpc endpoint"
  default = null
}

variable "policy" {
  type        = string
  description = "policy to attach to en eni"
  default = null
}

variable "security_group_ids" {
  type = list(string)
  description = "security group ids"
}

variable "tags" {
  type = object({
        Name = string
        Author      = string
        Environment = string
        Provisioner = string
        Region      = string
    })
  description = "vpc endpoint tags"
}

variable "vpc_endpoint_type"{
  type = string
  description = "vpc endpoint type can be either Interface or Gateway"
}

variable "service_name" {
  type = string
  description = "service name for endpoint"
}

variable "private_dns_enabled" {
  type = bool
  description = "dns name for private interface endpoint"
  default = false
}

variable "subnet_ids" {
  type = list(string)
  description = "list of subnets to deploy eni"
  default = null
}
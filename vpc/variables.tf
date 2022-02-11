variable "description" {
  description = "(Optional) A free-form text field up to a limit of 255 characters to describe the VPC."
  type = string
  default = ""
}

variable "ip_range" {
  description = "(Optional) The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24."
  type = string
  default = ""
}

variable "name" {
  description = "(Required) A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only."
  type = string
}

variable "region" {
  description = "(Required) The DigitalOcean region slug for the VPC's location."
  type = string
}

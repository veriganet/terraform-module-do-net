# ########
# Provider
# ########

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
# or DIGITALOCEAN_TOKEN / DIGITALOCEAN_ACCESS_TOKEN environment variables
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# #########
# terraform
# #########

# rest of the backend part will be filled by terragrunt
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  backend "s3" {}
}

########
# LOCALS
########



######
# DATA
######


###########
# RESOURCES
###########

resource "digitalocean_vpc" "this" {
  description = var.description
  ip_range = var.ip_range
  name   = var.name
  region = var.region
}



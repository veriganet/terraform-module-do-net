output "vpc_id" {
  value = digitalocean_vpc.this.id
}

output "vpc_urn" {
  value = digitalocean_vpc.this.urn
}

output "ip_range" {
  value = digitalocean_vpc.this.ip_range
}

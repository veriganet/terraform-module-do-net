output "vpc_id" {
  value = digitalocean_vpc.this.id
}

output "vpc_urn" {
  value = digitalocean_vpc.this.urn
}

output "consul_servers" {
  value = cloudflare_record.default.*.hostname
}

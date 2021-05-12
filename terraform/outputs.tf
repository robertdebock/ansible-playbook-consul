output "consulservers" {
  value = cloudflare_record.consulservers.*.hostname
}

output "consulclients" {
  value = cloudflare_record.consulclients.*.hostname
}

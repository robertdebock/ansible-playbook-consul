resource "digitalocean_project" "default" {
  name        = "consul"
  description = "Consul testing"
  purpose     = "Testing"
  environment = "development"
}

resource "digitalocean_project_resources" "consulservers" {
  project   = digitalocean_project.default.id
  resources = digitalocean_droplet.consulservers.*.urn
}

resource "digitalocean_project_resources" "consulclients" {
  project   = digitalocean_project.default.id
  resources = digitalocean_droplet.consulclients.*.urn
}

resource "digitalocean_ssh_key" "default" {
  name       = "consul"
  public_key = file("../ssh_keys/id_rsa.pub")
}

resource "digitalocean_droplet" "consulservers" {
  image    = "ubuntu-20-10-x64"
  name     = "consul-server-${count.index}"
  region   = "ams3"
  size     = "1gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
  count    = var.consulservers
}

resource "digitalocean_droplet" "consulclients" {
  image    = "ubuntu-20-10-x64"
  name     = "consul-client-${count.index}"
  region   = "ams3"
  size     = "1gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
  count    = var.consulclients
}

data "cloudflare_zones" "default" {
  filter {
    name = "meinit.nl"
  }
}

resource "cloudflare_record" "consulservers" {
  zone_id = data.cloudflare_zones.default.zones[0].id
  name    = "consul-server-${count.index}"
  value   = digitalocean_droplet.consulservers[count.index].ipv4_address
  type    = "A"
  count   = var.consulservers
}

resource "cloudflare_record" "consulclients" {
  zone_id = data.cloudflare_zones.default.zones[0].id
  name    = "consul-client-${count.index}"
  value   = digitalocean_droplet.consulclients[count.index].ipv4_address
  type    = "A"
  count   = var.consulclients
}

variable "do_token" {}

variable "consulservers" {
  description = "The number of server instances to create."
  type        = number
  default     = 3
}

variable "consulclients" {
  description = "The number of client instances to create."
  type        = number
  default     = 3
}

variable "image" {
  description = "The droplet image to use."
  type        = string
  default     = "ubuntu-21-04-x64"
}

variable "region" {
  description = "The region to use."
  type        = string
  default     = "ams3"
}

variable "size" {
  description = "The size to use for the droplet."
  type        = string
  default     = "1gb"
}

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

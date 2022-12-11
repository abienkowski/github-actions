variable "vault_addr" {
  type = string
  default = "https://localhost:8081"
}

variable "network" {
  type = string
  default = "vault"
}

variable "env_context" {
  type = string
  default = "dev"
}

variable "frontend_port" {
  type = number
  default = 8081
}

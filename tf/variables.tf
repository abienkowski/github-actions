variable "vault_addr" {
  type = string
  default = env.VAULT_ADDR
}

variable "network" {
  type = string
  default = env.DOCKER_NETWORK
}

variable "env_context" {
  type = string
  default = env.ENV_CONTEXT
}

variable "frontend_port" {
  type = number
  default = 8081
}

locals {
  vault_addr     = var.vault_addr
  network_name   = var.network
  environment    = var.environment
  frontend_port  = var.frontend_port
}

resource "docker_container" "frontend" {
  image = "docker.io/nginx:1.23.2"
  name  = "frontend"

  ports {
    internal = 80
    external = local.frontend_port
  }

  networks_advanced {
    name = local.network_name
  }

  lifecycle {
    ignore_changes = all
  }
}

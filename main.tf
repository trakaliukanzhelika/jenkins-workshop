terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

resource "local_file" "hello_world" {
  content  = "Terraform successfully initialized and created this file from Jenkins!"
  filename = "${path.module}/hello-from-terraform.txt"
}
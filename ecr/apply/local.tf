locals {
  resource_tags = {
    Project     = var.project_name
    Environment = terraform.workspace
  }
}


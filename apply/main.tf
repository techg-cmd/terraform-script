module "ecr" {
  source     = "../modules/ecr"
  repo_names = var.ecr_repo_names
  tags       = local.resource_tags
}
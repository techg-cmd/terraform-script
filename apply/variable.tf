variable "project_name" {
  type = string
}

variable "ecr_repo_names" {
  description = "List of ECR Repo Names"
  type        = list(string)
}
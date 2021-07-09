output "repository_url" {
  description = "Full ARN of the repository"
  value       = zipmap(var.repo_names, aws_ecr_repository.app_ecr_repo.*.repository_url)
}


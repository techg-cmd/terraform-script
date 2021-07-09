resource "aws_ecr_repository" "app_ecr_repo" {
  count                = length(var.repo_names)
  name                 = "${element(var.repo_names, count.index)}"
  image_tag_mutability = var.image_tag_mutability
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = merge(
    {
      "Name" = "${element(var.repo_names, count.index)}"
    },
    var.tags
  )
}
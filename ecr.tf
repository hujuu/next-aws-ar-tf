resource "aws_ecr_repository" "app_runner_image" {
  name                 = "app-runner-sample"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
	scan_on_push = false
  }
}
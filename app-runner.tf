resource "aws_apprunner_service" "example" {
  service_name = "example"

  source_configuration {
	# 作成したIAMロールを指定
	authentication_configuration {
	  access_role_arn = aws_iam_role.role.arn
	}
	# 事前に作成・pushしておいたECRリポジトリを指定
	image_repository {
	  image_configuration {
		port = "80"
	  }
	  image_identifier      = "${aws_ecr_repository.app_runner_image.repository_url}:latest"
	  image_repository_type = "ECR"
	}
  }

  tags = {
	Name = "example-apprunner-service"
  }
}

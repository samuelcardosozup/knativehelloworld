variable "repository_name" {
    type = string
    default = "knative"
}

resource "aws_ecr_repository" "knative" {
  name = var.repository_name
}
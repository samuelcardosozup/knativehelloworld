# Recupera AZs na região atual
data "aws_availability_zones" "available" {}

# Região
variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

# A região padrão utilizada
variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-1"
}

# Contexto
variable "context_knative" {
  default = "knative"
}

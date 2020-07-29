# Comentado para que não seja destruído no destroy

/*
variable "users" {
  type = list
  default = ["samuel"]
}

resource "aws_iam_user" "users" {
  count = length(var.users)
  name = element(var.users,count.index)
}
*/
data "terraform_remote_state" "s3" {
  backend = "s3"
  config = merge(var.remote_state.s3.gyanni-id, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}
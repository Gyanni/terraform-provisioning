data "terraform_remote_state" "s3" {
  backend = "s3"
  config = var.remote_state.s3.zerone-id
}
#1
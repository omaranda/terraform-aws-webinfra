
provider "aws" { region = "us-east-1" }

resource "aws_s3_bucket" "tf_state" { bucket = "terraform-remote-state-${var.env}" versioning { enabled = true } lifecycle { prevent_destroy = true } }

resource "aws_dynamodb_table" "tf_locks" { name         = "terraform-locks-${var.env}" billing_mode = "PAY_PER_REQUEST" hash_key     = "LockID"

attribute { name = "LockID" type = "S" } }

variable "env" { type    = string default = "dev" }


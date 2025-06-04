


resource "aws_instance" "web" { ami           = var.ami instance_type = var.instance_type tags = { Name = "web-${var.env}" } }

resource "aws_s3_bucket" "app_data" { bucket = "app-data-${var.env}" acl    = "private" }

resource "aws_db_instance" "db" { allocated_storage    = 20 engine               = "mysql" engine_version       = "8.0" instance_class       = "db.t3.micro" name                 = "appdb" username             = var.db_user password             = var.db_pass skip_final_snapshot  = true }




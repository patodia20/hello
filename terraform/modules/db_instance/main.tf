resource "aws_db_instance" "rupeek_db" {
  name                 = var.name
  allocated_storage    = var.allocated_storage
  db_subnet_group_name = var.db_subnet_group_name
  engine               = var.db_engine
  identifier           = var.db_identifier
  instance_class       = var.instance_class
  password             = var.password
  storage_encrypted    = var.storage_encrypted
  username             = var.username
    lifecycle {
    ignore_changes = [
      # Ignore changes to tags
      tags["created_by"], tags["created_by_arn"],
    ]
  }
  tags = merge(map("Name", var.name), var.tags)
  vpc_security_group_ids = var.security_group_id
}

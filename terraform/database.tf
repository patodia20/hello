module "test_db_instance" {
  source = "../../modules/db_instance"
  name = "test_mysql_db_instance"
  allocated_storage = 100
  db_subnet_group_name = "db_security_group"
  db_engine = "mysql"
  db_identifier = "test-db"
  instance_class = "db.t2.large"
  password = "password"
  storage_encrypted = true
  username = "platform_service"
  security_group_id= "sg-123456789"
  replica_count = 2
}

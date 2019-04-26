resource "aws_db_instance" "rds" {
  count                  = "${var.olmis-db-instance-class != "" ? 1 : 0}"

  identifier             = "${var.name}-env-postgres-db"
  allocated_storage      = 10
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "9.4.15"
  instance_class         = "${var.olmis-db-instance-class}"
  name                   = "open_lmis"
  username               = "${var.olmis-db-username}"
  password               = "${var.olmis-db-password}"
  db_subnet_group_name   = "default-vpc-fabce99d"
  vpc_security_group_ids = ["sg-330c8549"]
  apply_immediately      = true
  skip_final_snapshot    = true

  tags {
    BillTo = "OpenLMIS"
  }
}

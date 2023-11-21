data "aws_ssm_parameter" "database_password" {
  name = "/tudb/db_password"
}

resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "source_rds_instance" {
  engine                  = var.engine
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  identifier              = var.identifier
  db_name                 = var.db_name
  username                = var.username
  password                = data.aws_ssm_parameter.database_password.value
  skip_final_snapshot     = var.skip_final_snapshot 
  db_subnet_group_name    = aws_db_subnet_group.mysql_subnet_group.name
  multi_az                = var.multi_az  # Enable Multi-AZ deployment
  backup_retention_period = 7   # Optional: Set the backup retention period
  vpc_security_group_ids  = [var.rds_security_groups,] # Specify the security group(s) for RDS here, e.g., "sg-12345678"

  tags = merge(
    {
    Name = "${var.project-name}-${var.Environment}-TU_RDSInstance"
  },
  var.tags
  )
}

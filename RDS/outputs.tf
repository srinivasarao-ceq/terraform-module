
output "db_instance_arn" {
  description = "The ARN of the Source RDS instance"
  value       = aws_db_instance.source_rds_instance.arn
}

/* output "db_instance_replica_arn" {
  description = "The ARN of the Replica RDS instance"
  value       = aws_db_instance.read_replica_rds_instance.arn
}
 */
output "db_instance_source_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.source_rds_instance.endpoint
}

/* output "db_instance_Replication_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.read_replica_rds_instance.endpoint
} */
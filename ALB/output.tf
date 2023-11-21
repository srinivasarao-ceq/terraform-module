output "alb_arn" {
  value = aws_lb.application_load_balancer.arn
}

output "alb_dns_name" {
  value = aws_lb.application_load_balancer.dns_name
}

output "target_group_arns" {
  value = aws_lb_target_group.alb_target_group.arn
  
}
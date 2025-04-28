output "launch_template_id" {
  description = "ID of the created launch template"
  value       = aws_launch_template.ofir_template.id
}

output "autoscaling_group_name" {
  description = "Name of the Auto Scaling group"
  value       = aws_autoscaling_group.ofir_asg.name
}

output "autoscaling_group_arn" {
  description = "ARN of the Auto Scaling group"
  value       = aws_autoscaling_group.ofir_asg.arn
}


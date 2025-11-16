
output "load_balanced_aws_instance" {
  description = "The entire instance resource."
  value       = aws_instance.hello_world

  depends_on = [
    aws_lb_target_group_attachment.instance_attachement #A
  ]
}

#A This prevents the output from being returned until the instance_attachement resource finishes processing.
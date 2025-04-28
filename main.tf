provider "aws" {
  region = var.region
}

resource "aws_launch_template" "ofir_template" {
  name          = var.launch_template_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    device_index                = 0
    subnet_id                   = var.subnet_ids[1] # Picked one subnet for interface
    security_groups             = var.security_group_ids
    associate_public_ip_address = false
  }

  user_data = var.user_data

  tag_specifications {
    resource_type = "instance"

    tags = {
      "Name" = var.instance_name_tag
    }
  }
}

resource "aws_autoscaling_group" "ofir_asg" {
  name                      = var.autoscaling_group_name
  min_size                  = 0
  max_size                  = 3
  desired_capacity          = 0
  vpc_zone_identifier       = var.subnet_ids
  health_check_type         = "ELB"
  health_check_grace_period = 31

  launch_template {
    id      = aws_launch_template.ofir_template.id
    version = "$Default"
  }

  target_group_arns = var.target_group_arns

  tag {
    key                 = "Name"
    value               = var.instance_name_tag
    propagate_at_launch = true
  }

  termination_policies = ["Default"]
}


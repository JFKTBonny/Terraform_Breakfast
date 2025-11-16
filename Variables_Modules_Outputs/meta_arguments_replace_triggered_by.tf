resource "null_resource" "replace_instance" { #A
  triggers = {
    instance_type = var.instance_type #B
  }
}

resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = data.aws_subnets.default.ids[0]
  instance_type = var.instance_type #C

  lifecycle {
    replace_triggered_by = [
      null_resource.replace_instance #D
    ]
  }
}

#A The Null Resource is a "state only" resource. Here it lets us trigger a replacement when instance_type changes.
#B Replace this Resource when the instance type variable changes.
#C Normally changing this field does not replace the instance.
#D This field has to be a Resource or Resource Attribute- it can not be variable.
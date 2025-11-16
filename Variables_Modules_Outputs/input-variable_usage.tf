resource "aws_instance" "hello_world" {
  ami           = var.ami #A
  subnet_id     = var.subnet_id #A
  instance_type = var.instance_type #A
}


#A The three variables defined above are each used here to configure out instance.
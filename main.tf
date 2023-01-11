resource "aws_security_group" "sg" {
        name = var.sec_name
        description = var.sec_desc
        vpc_id      =  var.vpc_id

# To Allow SSH Transport
  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }


 ingress {
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 443
    protocol    = "tcp"
    to_port     = 444
    cidr_blocks = ["0.0.0.0/0"]
  }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
 lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "my_new_instance" {
        ami = var.ami
        instance_type = var.instance_type
        key_name   = var.key_name


vpc_security_group_ids = [
    aws_security_group.sg.id
  ]

root_block_device {
    delete_on_termination = true
    volume_size           = 15
    volume_type           = "gp2"
  }

 tags = {
    Name = var.tag_name
  }
 depends_on = [aws_security_group.sg]
}

                                   

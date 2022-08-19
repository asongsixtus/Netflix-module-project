# provider "aws" {
#   region = "us-east-1"
#   profile = "default"
#
# }


# resource "aws_instance" "web" {
#   ami           = "ami-0cff7528ff583bf9a"
#   instance_type = "t2.micro"
#   associate_public_ip_address = true
#   key_name = "TESTKEYPAIR"
#   vpc_security_group_ids =[aws_security_group.allow_tls.id]
#
#   tags = {
#     name = "netflix-webserver"
#   }
#
# }

# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#
#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
#
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
#
#   tags = {
#     Name = "allow_tls"
#   }
# }
#---------------------commented for my understanding. Dont want to delete


#
# module "sg" {
#   source = "./sg"
# }
#
#
# module "ec2" {
#   source = "./ec2"
#   sg_id = module.sg.sg_id
# }
#
# #renaming this because we dont need duplicate. U can use same module for app and web as needed by just changing logical name
# module "ec2-app-server" {
#   source = "./ec2"
#   sg_id = module.sg.sg_id
# }

resource "aws_instance" "web" {
  # ami           = "ami-0cff7528ff583bf9a"
  ami           = var.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "TESTKEYPAIR"
  #vpc_security_group_ids =[aws_security_group.allow_tls.id]
  vpc_security_group_ids =[var.sg_id]


  tags = {
    name = "netflix-webserver"
  }

}

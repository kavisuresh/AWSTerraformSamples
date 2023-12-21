resource "aws_instance" "web_server" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"

  tags = {
      Name = var.instance_name
  }
}

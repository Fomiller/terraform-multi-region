# this is what is being created in each region

variable "name" {}
# get ami dynamic ami data
data "aws_ami" "selected" {
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.????????.?-x86_64-gp2"]
  }
  filter {
    name   = "state"
    values = ["available"]
  }

  most_recent = true
}

# create instance using ami data
resource "aws_instance" "instance" {
  ami           = data.aws_ami.selected.id
  instance_type = "t2.micro"

  tags = {
    Name = var.name
  }
}
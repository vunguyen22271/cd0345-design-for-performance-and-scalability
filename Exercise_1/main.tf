
# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
    count         = 4
    instance_type = "t2.micro"
    ami           = "ami-0c7217cdde317cfec"
    tags = {
        Name = "Udacity T2"
    }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
    count         = 2
    instance_type = "m4.large"
    ami           = "ami-0c7217cdde317cfec"
    tags = {
        Name = "Udacity M4"
    }
}
# terraform destroy -target aws_instance.udacity_m4
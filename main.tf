# Define the provider for the first region (us-east-1)
provider "aws" {
  alias  = "useast1"
  region = "us-east-1"
}

# Define the provider for the second region (us-east-2)
provider "aws" {
  alias  = "useast2"
  region = "us-east-2"
}

module "vpc_useast1" {
  source     = "./modules/vpc"
  providers  = { aws = aws.useast1 }
  cidr_block = "10.0.0.0/16"
  name       = "useast1_vpc"
}

module "subnet_useast1" {
  source            = "./modules/subnet"
  providers         = { aws = aws.useast1 }
  vpc_id            = module.vpc_useast1.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  name              = "useast1_subnet"
}

module "sg_useast1" {
  source    = "./modules/security_group"
  providers = { aws = aws.useast1 }
  vpc_id    = module.vpc_useast1.id
  name      = "useast1_sg"
}

module "ec2_useast1" {
  source         = "./modules/ec2_instance"
  providers      = { aws = aws.useast1 }
  instance_type  = "t2.micro"
  subnet_id      = module.subnet_useast1.id
  security_groups = [module.sg_useast1.name]
  name           = "Instance_in_us_east_1"
}

module "vpc_useast2" {
  source     = "./modules/vpc"
  providers  = { aws = aws.useast2 }
  cidr_block = "10.1.0.0/16"
  name       = "useast2_vpc"
}

module "subnet_useast2" {
  source            = "./modules/subnet"
  providers         = { aws = aws.useast2 }
  vpc_id            = module.vpc_useast2.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "us-east-2a"
  name              = "useast2_subnet"
}

module "sg_useast2" {
  source    = "./modules/security_group"
  providers = { aws = aws.useast2 }
  vpc_id    = module.vpc_useast2.id
  name      = "useast2_sg"
}

module "ec2_useast2" {
  source         = "./modules/ec2_instance"
  providers      = { aws = aws.useast2 }
  instance_type  = "t2.micro"
  subnet_id      = module.subnet_useast2.id
  security_groups = [module.sg_useast2.name]
  name           = "Instance_in_us_east_2"
}

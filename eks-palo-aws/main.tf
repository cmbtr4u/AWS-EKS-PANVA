module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = "10.0.0.0/16"
  private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "vm" {
  source         = "./modules/vm"
  subnet_id      = module.vpc.subnet_id
 
}
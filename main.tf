
module "gcp" {
  source            = "./modules"
  name              = var.name
  gcp_project       = var.gcp_project
  region            = var.region
  zone              = var.zone
  subnet_cidr_range = var.subnet_cidr_range
}


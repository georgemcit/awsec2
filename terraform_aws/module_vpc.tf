module "georgesg" {
  source            = "./sg/"
  vpc_id      = module.vpc.vpc_id
}

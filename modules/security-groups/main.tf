module "security_group" {
  source = "git::https://github.com/Shivasjohn/terraform-modules.git//modules/security-group?ref=main"
  vpc_id = module.vpc.vpc_id
  tags   = var.tags
}

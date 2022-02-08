## A sample to create application load balancer
```
module "alb_www" {
  source          = "github.com/cloudveto/terraform-modules/aws/loadbalancer/lb-application"
  environment     = var.environment
  lb_internal     = "false"
  name            = "${var.name}-www"
  security_groups = [module.sg.sg_id]
  subnets         = [module.vpc.subnet_pub_az1_id, module.vpc.subnet_pub_az2_id]
}
module "alb_listner_redirect_www" {
  source               = "github.com/cloudveto/terraform-modules/aws/loadbalancer/lb-application-listner-redirect"
  port                 = "80"
  protocol             = "HTTP"
  redirect_port        = "443"
  redirect_protocol    = "HTTPS"
  redirect_status_code = "HTTP_301"
  alb_arn              = module.alb_www.alb_arn
}
module "alb_listener_www_443" {
  source           = "github.com/cloudveto/terraform-modules/aws/loadbalancer/lb-application-listner"
  alb_arn          = module.alb_www.alb_arn
  alb_lb_port      = "443"
  cert_arn         = "arn:aws:acm:ap-south-1:1234567890:certificate/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxx"
  protocol         = "HTTPS"
  ssl_policy       = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  target_group_arn = module.alb_tg_www_443.alb_target_group_arn
}
module "alb_tg_www_443" {
  source          = "github.com/cloudveto/terraform-modules/aws/loadbalancer/lb-application-target"
  environment     = var.environment
  health_path     = "/"
  health_port     = "8080"
  health_protocol = "HTTP"
  name            = "${var.name}-${var.environment}-www-ssl"
  protocol        = "HTTP"
  target_type     = "ip"
  tg_port         = "8080"
  vpc_id          = module.vpc.vpc_id
}
```
## Below example is to use ec2 module.
```
module "ec2" {
  source                 = "github.com/cloudveto/terraform-modules/aws/ec2"
  ami                    = "ami-123456"
  environment            = var.environment
  application            = var.application
  iam_instance_profile   = "devops_role"
  instance_type          = "t3.small"
  name                   = "my-ec2-instance"
  subnet_id              = [module.vpc_id.subnet_pri_az1_id,module.vpc_id.subnet_pri_az2_id]
  user_data              = "user_data.sh"
  vpc_security_group_ids = [module.sg.sg_id]
  key_name               = "mykey"
  #  kms_key_id             = module.kms.key_id
}
```
### subnet_id should be either of vpc subnet ids subnet-abcd123; or module.vpc_id.subnet_id.
### vpc_security_group_ids should be either of security groups sg-abcd123; or module.sg.sg_id.
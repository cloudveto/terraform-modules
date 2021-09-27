## Below example is to use ec2 module. Which will create 1 root volume and 2 additional ecs volumes
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
   root_block_device = [
    {
      delete_on_termination = "true"
      encrypted   = true
      volume_type = "gp3"
      throughput  = 200
      volume_size = 50
      kms_key_id = "arn:aws:kms:ap-south-1:123456789:key/xxxxxxxx-y0y0y-1111-z0z0-asdf123454"
    }
  ]
  ebs_block_device = [
    {
      delete_on_termination = "true"
      device_name = "/dev/sdb"
      volume_type = "gp3"
      volume_size = 50
      encrypted   = true
      kms_key_id = "arn:aws:kms:ap-south-1:123456789:key/xxxxxxxx-y0y0y-1111-z0z0-asdf123454"
    },
    {
      delete_on_termination = "true"
      device_name = "/dev/sdc"
      volume_type = "gp3"
      volume_size = 50
      encrypted   = true
      kms_key_id = "arn:aws:kms:ap-south-1:123456789:key/xxxxxxxx-y0y0y-1111-z0z0-asdf123454"
    }
  ]
}
```
### subnet_id should be either of vpc subnet ids subnet-abcd123; or module.vpc_id.subnet_id.
### vpc_security_group_ids should be either of security groups sg-abcd123; or module.sg.sg_id.
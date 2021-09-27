### Example to start and stop ec2 instances.
```
######### start_instance #########
module "start_instance" {
  source             = "github.com/cloudveto/terraform-modules/aws/lambda/lambda_function"
  environment        = var.environment
  filename           = "lambda_start_instance_file"
  function_name      = "start_instance-${var.environment}"
  handler            = "lambda_function.lambda_handler"
  lambda_description = "start instance"
  lambda_memory_size = "128"
  lambda_path        = "${path.module}/files/lambda_function_start"
  lambda_publish     = "true"
  lambda_role        = "module.role.role_arn"
  lambda_runtime     = "python3.8"
  lambda_timeout     = "3"
  security_group_ids = [module.sg.sg_id]
  subnet_ids         = [module.vpc_id.subnet_pri_1a_id,module.vpc_id.subnet_pri_1b_id]
}
module "start_instance_permission_cwevents" {
  source               = "github.com/cloudveto/terraform-modules/aws/lambda/lambda_permission"
  action               = "lambda:InvokeFunction"
  lambda_function_name = module.start_instance.lambda_funtion_name
  principal            = "events.amazonaws.com"
  source_arn           = module.cw_events_rule_start.arn
  statement_id         = "AllowExecutionFromCloudWatchEvents"
}
######### stop_instance #########
module "stop_instance" {
  source             = "github.com/cloudveto/terraform-modules/aws/lambda/lambda_function"
  environment        = var.environment
  filename           = "lambda_stop_instance_file"
  function_name      = "stop_instance-${var.environment}"
  handler            = "lambda_function.lambda_handler"
  lambda_description = "stop instance"
  lambda_memory_size = "128"
  lambda_path        = "${path.module}/files/lambda_function_stop"
  lambda_publish     = "true"
  lambda_role        = "module.role.role_arn"
  lambda_runtime     = "python3.8"
  lambda_timeout     = "3"
  security_group_ids = [module.sg.sg_id]
  subnet_ids         = [module.vpc_id.subnet_pri_1a_id,module.vpc_id.subnet_pri_1b_id]
}
module "stop_instance_permission_cwevents" {
  source               = "github.com/cloudveto/terraform-modules/aws/lambda/lambda_permission"
  action               = "lambda:InvokeFunction"
  lambda_function_name = module.stop_instance.lambda_funtion_name
  principal            = "events.amazonaws.com"
  source_arn           = module.cw_events_rule_stop.arn
  statement_id         = "AllowExecutionFromCloudWatchEvents"
}
```
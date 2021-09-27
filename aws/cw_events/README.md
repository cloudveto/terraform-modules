### Example
```
module "cw_events_target_start" {
  source    = "github.com/cloudveto/terraform-modules/aws/cw_events/cloudwatch_event_target"
  arn       = module.start_instance.lambda_arn
  target_id = "StartInstance"
  rule      = module.cw_events_rule_start.name
}
module "cw_events_rule_start" {
  source              = "github.com/cloudveto/terraform-modules/aws/cw_events/cloudwatch_event_rule"
  description         = "start instance daily at 9 am IST"
  name                = "start_instance"
  schedule_expression = "cron(30 3 ? * MON-FRI *)"
}
###################  cw_events_stop   ###############
module "cw_events_target_stop" {
  source    = "github.com/cloudveto/terraform-modules/aws/cw_events/cloudwatch_event_target"
  arn       = module.stop_instance.lambda_arn
  target_id = "StopInstance"
  rule      = module.cw_events_rule_stop.name
}
module "cw_events_rule_stop" {
  source              = "github.com/cloudveto/terraform-modules/aws/cw_events/cloudwatch_event_rule"
  description         = "stop instance daily at  7pm IST"
  name                = "stop_instance"
  schedule_expression = "cron(30 13 ? * MON-FRI *)"
}
```
### File to be created under path.
To start ec2
files\lambda_function_start\lambda_function.py
```
import boto3
region = 'ap-south-1'
instances = ['i-0123456789', 'i-6789012345']
ec2 = boto3.client('ec2', region_name=region)

def lambda_handler(event, context):
    ec2.start_instances(InstanceIds=instances)
    print('started your instances: ' + str(instances))
```
To stop ec2
files\lambda_function_stop\lambda_function.py
```
import boto3
region = 'ap-south-1'
instances = ['i-0123456789', 'i-6789012345']
ec2 = boto3.client('ec2', region_name=region)

def lambda_handler(event, context):
    ec2.stop_instances(InstanceIds=instances)
    print('stopped your instances: ' + str(instances))
```
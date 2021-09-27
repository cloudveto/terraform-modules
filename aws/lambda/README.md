Example
```
module "cw_events_target_start" {
  source    = "../../../modules/cloudwatch_event_target"
  arn       = module.start_instance.lambda_arn
  target_id = "StartInstance"
  rule      = module.cw_events_rule_start.name
}
module "cw_events_rule_start" {
  source              = "../../../modules/cloudwatch_event_rule"
  description         = "start instance daily at 9 am IST"
  name                = "start_instance"
  schedule_expression = "cron(30 3 ? * MON-FRI *)"
}
###################  cw_events_stop   ###############
module "cw_events_target_stop" {
  source    = "../../../modules/cloudwatch_event_target"
  arn       = module.stop_instance.lambda_arn
  target_id = "StopInstance"
  rule      = module.cw_events_rule_stop.name
}
module "cw_events_rule_stop" {
  source              = "../../../modules/cloudwatch_event_rule"
  description         = "stop instance daily at  7pm IST"
  name                = "stop_instance"
  schedule_expression = "cron(30 13 ? * MON-FRI *)"
}
```
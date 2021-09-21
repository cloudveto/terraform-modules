############### auto scaling ###############
resource "aws_appautoscaling_target" "asg_target" {
  service_namespace  = "ecs"
  resource_id        = "service/${var.ecs_cluster_name}/${var.ecs_service_name}"
  scalable_dimension = "ecs:service:DesiredCount"
  min_capacity       = var.min_count
  max_capacity       = var.max_count
  #  depends_on         = var.ecs_service_name
  #  depends_on = [
  #    aws_ecs_service.ecs_service_master_data
  #  ]
}

resource "aws_appautoscaling_policy" "asg_policy_up" {
  name               = "appScalingPolicy${var.environment}${var.name}ScaleUp"
  service_namespace  = "ecs"
  resource_id        = "service/${var.ecs_cluster_name}/${var.ecs_service_name}"
  scalable_dimension = "ecs:service:DesiredCount"
  step_scaling_policy_configuration {
    adjustment_type         = "ChangeInCapacity"
    cooldown                = var.scale_up_cooldown_seconds
    metric_aggregation_type = "Maximum"

    step_adjustment {
      metric_interval_lower_bound = 0
      scaling_adjustment          = var.scaling_adjustment_up
    }
  }
  depends_on = [
    aws_appautoscaling_target.asg_target
  ]
}

resource "aws_appautoscaling_policy" "asg_policy_down" {
  name               = "appScalingPolicy${var.environment}${var.name}ScaleDown"
  service_namespace  = "ecs"
  resource_id        = "service/${var.ecs_cluster_name}/${var.ecs_service_name}"
  scalable_dimension = "ecs:service:DesiredCount"

  step_scaling_policy_configuration {
    adjustment_type         = "ChangeInCapacity"
    cooldown                = var.scale_down_cooldown_seconds
    metric_aggregation_type = "Average"

    step_adjustment {
      metric_interval_upper_bound = 0
      scaling_adjustment          = var.scaling_adjustment_down
    }
  }
  depends_on = [
    aws_appautoscaling_target.asg_target
  ]
}
# CloudWatch alarm that triggers the autoscaling up policy
resource "aws_cloudwatch_metric_alarm" "service_cpu_high" {
  alarm_name          = var.alarm_name_high
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = var.alarm_metric_name
  namespace           = "AWS/ECS"
  period              = var.alarm_period_high
  statistic           = var.alarm_statistic_high
  threshold           = var.threshold_high

  dimensions = {
    ClusterName = var.ecs_cluster_name
    ServiceName = var.ecs_service_name
  }
  alarm_actions = [aws_appautoscaling_policy.asg_policy_up.arn]
}

# CloudWatch alarm that triggers the autoscaling down policy
resource "aws_cloudwatch_metric_alarm" "service_cpu_low" {
  alarm_name          = var.alarm_name_low
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = var.alarm_metric_name
  namespace           = "AWS/ECS"
  period              = var.alarm_period_low
  statistic           = var.alarm_statistic_low
  threshold           = var.threshold_low

  dimensions = {
    ClusterName = var.ecs_cluster_name
    ServiceName = var.ecs_service_name
  }
  alarm_actions = [aws_appautoscaling_policy.asg_policy_down.arn]
}
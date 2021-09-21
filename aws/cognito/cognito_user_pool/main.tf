resource "aws_cognito_user_pool" "user_pool" {
  name                       = var.name
  mfa_configuration          = var.mfa_configuration
  sms_authentication_message = var.sms_authentication_message
  auto_verified_attributes   = var.auto_verified_attributes
  username_attributes        = var.username_attributes
  dynamic "username_configuration" {
    for_each = var.username_configuration
    content {
      case_sensitive = lookup(username_configuration.value, "case_sensitive", [])

    }
  }
  dynamic "sms_configuration" {
    for_each = var.sms_configuration
    content {
      external_id    = lookup(sms_configuration.value, "external_id", [])
      sns_caller_arn = lookup(sms_configuration.value, "sns_caller_arn", [])
    }
  }
  dynamic "software_token_mfa_configuration" {
    for_each = var.software_token_mfa_configuration
    content {
      enabled = lookup(software_token_mfa_configuration.value, "enable", [])
    }
  }
  dynamic "lambda_config" {
    for_each = var.lambda_config
    content {
      create_auth_challenge          = lookup(lambda_config.value, "create_auth_challenge", [])
      custom_message                 = lookup(lambda_config.value, "custom_message", [])
      define_auth_challenge          = lookup(lambda_config.value, "define_auth_challenge", [])
      post_authentication            = lookup(lambda_config.value, "post_authentication", [])
      post_confirmation              = lookup(lambda_config.value, "post_confirmation", [])
      pre_authentication             = lookup(lambda_config.value, "pre_authentication", [])
      pre_sign_up                    = lookup(lambda_config.value, "pre_sign_up", [])
      pre_token_generation           = lookup(lambda_config.value, "pre_token_generation", [])
      user_migration                 = lookup(lambda_config.value, "user_migration", [])
      verify_auth_challenge_response = lookup(lambda_config.value, "verify_auth_challenge_response", [])
    }
  }
  dynamic "password_policy" {
    for_each = var.password_policy
    content {
      minimum_length                   = lookup(password_policy.value, "minimum_length", [])
      require_lowercase                = lookup(password_policy.value, "require_lowercase", [])
      require_numbers                  = lookup(password_policy.value, "require_numbers", [])
      require_symbols                  = lookup(password_policy.value, "require_symbols", [])
      require_uppercase                = lookup(password_policy.value, "require_uppercase", [])
      temporary_password_validity_days = lookup(password_policy.value, "temporary_password_validity_days", [])
    }
  }
  dynamic "sms_configuration" {
    for_each = var.sms_configuration
    content {
      external_id    = lookup(sms_configuration.value, "external_id", [])
      sns_caller_arn = lookup(sms_configuration.value, "sns_caller_arn", [])
    }
  }
  dynamic "software_token_mfa_configuration" {
    for_each = var.software_token_mfa_configuration
    content {
      enabled = lookup(software_token_mfa_configuration.value, "software_token_mfa_configuration", [])
    }
  }
  dynamic "user_pool_add_ons" {
    for_each = var.user_pool_add_ons
    content {
      advanced_security_mode = lookup(user_pool_add_ons.value, "user_pool_add_ons", [])
    }
  }
  dynamic "verification_message_template" {
    for_each = var.verification_message_template
    content {
      default_email_option  = lookup(verification_message_template.value, "default_email_option", [])
      email_message         = lookup(verification_message_template.value, "email_message", [])
      email_message_by_link = lookup(verification_message_template.value, "email_message_by_link", [])
      email_subject         = lookup(verification_message_template.value, "email_subject", [])
      email_subject_by_link = lookup(verification_message_template.value, "email_subject_by_link", [])
      sms_message           = lookup(verification_message_template.value, "sms_message", [])
    }
  }
  dynamic "schema" {
    for_each = var.schema
    content {
      attribute_data_type      = lookup(schema.value, "attribute_data_type", [])
      name                     = lookup(schema.value, "name", [])
      developer_only_attribute = lookup(schema.value, "developer_only_attribute", [])
      mutable                  = lookup(schema.value, "mutable", [])
      required                 = lookup(schema.value, "required", [])
      dynamic "string_attribute_constraints" {
        for_each = lookup(schema.value, "string_attribute_constraints", [])
        content {
          max_length = lookup(string_attribute_constraints.value, "max_length", 0)
          min_length = lookup(string_attribute_constraints.value, "min_length", 0)
        }
      }
    }
  }
  dynamic "admin_create_user_config" {
    for_each = var.allow_admin_create_user_config
    content {
      allow_admin_create_user_only = lookup(admin_create_user_config.value, "allow_admin_create_user_only", [])
      dynamic "invite_message_template" {
        for_each = lookup(admin_create_user_config.value, "invite_message_template", [])
        content {
          email_message = lookup(invite_message_template.value, "email_message", [])
          email_subject = lookup(invite_message_template.value, "email_subject", [])
          sms_message   = lookup(invite_message_template.value, "sms_message", [])
        }
      }
    }
  }
  dynamic "email_configuration" {
    for_each = var.email_configuration
    content {
      reply_to_email_address = lookup(email_configuration.value, "reply_to_email_address", [])
      source_arn             = lookup(email_configuration.value, "source_arn", [])
      from_email_address     = lookup(email_configuration.value, "from_email_address", [])
      email_sending_account  = lookup(email_configuration.value, "email_sending_account", [])

    }
  }
}
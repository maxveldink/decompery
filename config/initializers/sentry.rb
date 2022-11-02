# typed: false
# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = "https://b12e628f38524cd1bfd0f04d859f33aa@o576221.ingest.sentry.io/4504038270435328"
  config.enabled_environments = %w[production]
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  config.traces_sample_rate = if Rails.env.production?
                                0.1
                              else
                                0
                              end
end

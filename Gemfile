# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

# Use postgresql as the database for Active Record
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

gem "sorbet-runtime"

gem "honeybadger"

# Use Redis adapter to run Action Cable in production
gem "redis"

gem "view_component"

gem "good_job"

gem "mail", "< 2.8"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  gem "bundler-leak", require: false
  gem "rubocop", require: false
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-sorbet", require: false
  gem "sorbet"
  gem "tapioca", require: false
end

group :test do
  gem "capybara"
  gem "cuprite"
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "shoulda"
end

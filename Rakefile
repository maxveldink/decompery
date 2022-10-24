# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

unless Rails.env.production?
  require "bundler/plumber/task"
  Bundler::Plumber::Task.new
end

task :rubocop do # rubocop:disable Rails/RakeEnvironment
  sh "bin/rubocop -A"
end

task :sorbet do # rubocop:disable Rails/RakeEnvironment
  sh "bundle exec srb tc"
end

task code_quality: %i[bundle:leak sorbet rubocop]

task default: %i[code_quality test:all]

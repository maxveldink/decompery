# frozen_string_literal: true

class CreateGoodJobs < ActiveRecord::Migration[7.0]
  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  def change
    enable_extension "pgcrypto"

    create_table :good_jobs, id: :uuid do |t|
      t.text :queue_name
      t.integer :priority
      t.jsonb :serialized_params
      t.datetime :scheduled_at
      t.datetime :performed_at
      t.datetime :finished_at
      t.text :error

      t.timestamps

      t.uuid :active_job_id
      t.text :concurrency_key
      t.text :cron_key
      t.uuid :retried_good_job_id
      t.datetime :cron_at
    end

    create_table :good_job_processes, id: :uuid do |t|
      t.timestamps
      t.jsonb :state
    end

    create_table :good_job_settings, id: :uuid do |t|
      t.timestamps
      t.text :key
      t.jsonb :value
      t.index :key, unique: true
    end

    add_index :good_jobs, :scheduled_at, where: "(finished_at IS NULL)", name: "index_good_jobs_on_scheduled_at"
    add_index :good_jobs, %i[queue_name scheduled_at], where: "(finished_at IS NULL)",
                                                       name: :index_good_jobs_on_queue_name_and_scheduled_at
    add_index :good_jobs, %i[active_job_id created_at], name: :index_good_jobs_on_active_job_id_and_created_at
    add_index :good_jobs, :concurrency_key, where: "(finished_at IS NULL)",
                                            name: :index_good_jobs_on_concurrency_key_when_unfinished
    add_index :good_jobs, %i[cron_key created_at], name: :index_good_jobs_on_cron_key_and_created_at
    add_index :good_jobs, %i[cron_key cron_at], name: :index_good_jobs_on_cron_key_and_cron_at, unique: true
    add_index :good_jobs, [:active_job_id], name: :index_good_jobs_on_active_job_id
    add_index :good_jobs, [:finished_at], where: "retried_good_job_id IS NULL AND finished_at IS NOT NULL",
                                          name: :index_good_jobs_jobs_on_finished_at
    add_index :good_jobs, %i[priority created_at], order: { priority: "DESC NULLS LAST", created_at: :asc },
                                                   where: "finished_at IS NULL", name: :index_good_jobs_jobs_on_priority_created_at_when_unfinished # rubocop:disable Metrics/LineLength
  end
  # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
end

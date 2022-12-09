# frozen_string_literal: true

class AddShowEstimatesToDecomp < ActiveRecord::Migration[7.0]
  def change
    add_column :decomps, :show_estimates, :boolean, default: false, null: false
  end
end

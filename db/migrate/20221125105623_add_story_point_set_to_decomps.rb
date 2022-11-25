# frozen_string_literal: true

class AddStoryPointSetToDecomps < ActiveRecord::Migration[7.0]
  def change
    add_column :decomps, :story_point_set, :integer, default: 0
  end
end

# frozen_string_literal: true

class RemoveTopicFromDecomp < ActiveRecord::Migration[7.0]
  def change
    remove_column :decomps, :topic, :text
  end
end

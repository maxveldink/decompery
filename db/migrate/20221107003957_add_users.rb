# frozen_string_literal: true

class AddUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

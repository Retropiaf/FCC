class AddIndexToDescription < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :descriptions, :challenges
    add_index :descriptions, :challenge_id
  end
end

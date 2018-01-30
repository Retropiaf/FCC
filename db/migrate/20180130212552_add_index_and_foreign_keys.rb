class AddIndexAndForeignKeys < ActiveRecord::Migration[5.1]
  def change
  end
  add_index :chapters, :challenge_id
  add_foreign_key :chapters, :challenges
end

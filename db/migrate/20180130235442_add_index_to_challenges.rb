class AddIndexToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :chapter_id, :integer
    add_foreign_key :challenges, :chapters
    add_index :challenges, :chapter_id

  end
end

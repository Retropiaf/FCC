class AddIndexToParagrapher < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :description_paragraphers, :challenges
    add_index :description_paragraphers, :challenge_id
  end
end

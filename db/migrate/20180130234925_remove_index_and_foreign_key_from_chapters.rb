class RemoveIndexAndForeignKeyFromChapters < ActiveRecord::Migration[5.1]
  def change
    remove_index :chapters, :challenge_id
  end
end

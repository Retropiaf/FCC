class AddIndexToParagraphers < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :description_paragraphers, :descriptions
    add_index :description_paragraphers, :description_id
  end
end

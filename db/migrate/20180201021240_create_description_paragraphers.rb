class CreateDescriptionParagraphers < ActiveRecord::Migration[5.1]
  def change
    create_table :description_paragraphers do |t|
      t.integer :description_id
      t.string :paragraph, array: :true
      t.integer :order
      t.timestamps
    end
  end
end

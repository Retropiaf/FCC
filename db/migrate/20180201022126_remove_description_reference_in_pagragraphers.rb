class RemoveDescriptionReferenceInPagragraphers < ActiveRecord::Migration[5.1]
  def change
    remove_column :description_paragraphers, :description_id
  end
end

class AddOrderToChapter < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :order, :integer
  end
end

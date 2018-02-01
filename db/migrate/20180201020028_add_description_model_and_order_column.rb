class AddDescriptionModelAndOrderColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :order, :integer
    remove_column :challenges, :description, :string
    add_column :challenges, :description_id, :integer
  end
end

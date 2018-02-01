class AddDescToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :description, :json
  end
end

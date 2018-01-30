class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :freeCodeCampId
      t.string :title
      t.string :description, array: true, default: []
      t.string :challengeSeed, array: true, default: []
      t.string :tests, array: true, default: []
      t.timestamps
    end
  end
end

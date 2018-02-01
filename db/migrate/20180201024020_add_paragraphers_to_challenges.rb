class AddParagraphersToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :description_paragraphers, :challenge_id, :integer
  end
end

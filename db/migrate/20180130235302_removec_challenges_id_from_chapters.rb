class RemovecChallengesIdFromChapters < ActiveRecord::Migration[5.1]
  def change
    remove_column :chapters, :challenge_id
  end
end

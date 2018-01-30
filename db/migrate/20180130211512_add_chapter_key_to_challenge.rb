class AddChapterKeyToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :challenge_id, :integer
    
  end
end

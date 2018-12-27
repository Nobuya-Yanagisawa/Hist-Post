class CreateWritingLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :writing_likes do |t|
    	t.integer :writing_id
    	t.integer :user_id
    	t.integer :word_id

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.integer :tag_id
    	t.string :post_name
    	t.string :post_image_id
    	t.text :explanation

      t.timestamps
    end
  end
end

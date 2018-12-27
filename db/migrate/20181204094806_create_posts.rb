class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.integer :user_id
      # t.integer :category_id
    	t.integer :tag_id
    	t.string :post_title
    	t.string :post_image_id
      t.integer :post_image_width
      t.integer :post_image_height
    	t.text :top_explanation

      t.timestamps
    end
  end
end

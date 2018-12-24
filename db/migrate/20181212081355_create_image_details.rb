class CreateImageDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :image_details do |t|
    	t.integer :post_id
    	t.text :detail
    	t.integer :value_x
    	t.integer :value_y

      t.timestamps
    end
  end
end

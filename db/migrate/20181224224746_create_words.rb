class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
    	t.integer :category_id
    	t.string :word_name

      t.timestamps
    end
  end
end

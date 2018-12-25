class CreateWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :writings do |t|
    	t.integer :word_id
    	t.string :writing_writer
    	t.text :writing_text

      t.timestamps
    end
  end
end

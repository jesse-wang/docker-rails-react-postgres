class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
    	t.belongs_to :designer, foreign_key: true
    	t.belongs_to :category, foreign_key: true
    	t.integer :year
    	t.string :season
    	t.string :name
    	t.string :code
    	t.integer :price
    	t.string :gender
    	t.string :size
        t.string :color
    	t.string :style
    	t.string :material
    	t.text :description
    	t.string :image
    	t.json :meta

    	t.index :year
    	t.index :season
    	t.index :name
    	t.index :code, unique: true
    	t.index :price
    	t.index :gender
    	t.index :size
        t.index :color
    	t.index :style
    	t.index :material
    end	
  end
end

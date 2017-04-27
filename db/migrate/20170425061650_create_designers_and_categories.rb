class CreateDesignersAndCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :designers do |t|
    	t.string :name
    	t.string :origin
    	t.text :description
    	t.string :image
    	t.json :meta
    	t.timestamps

    	t.index :name
    	t.index :origin
    end

    create_table :categories do |t|
    	t.string :name
    	t.string :image
    	t.json :meta
    	t.timestamps

    	t.index :name
    end

    create_table :categories_designers, id: false do |t|
      t.belongs_to :designer, index: true
      t.belongs_to :category, index: true
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
    	t.string :name
    	t.string :origin
    	t.text :description
    	t.string :image
    	t.string :media_type
        t.string :manufacturer_code
        t.string :address_line1
        t.string :address_line2
        t.string :city
        t.string :state
        t.string :country
        t.string :zip
    	t.json :meta
    	t.timestamps

    	t.index :name
    	t.index :origin
    	t.index :media_type
    end
  end
end

class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :location
      t.string :email
      t.string :phone_number
      t.string :url
      t.string :status

      t.timestamps null: false
    end
  end
end

class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.datetime :order_date

      t.timestamps null: false
    end
  end
end

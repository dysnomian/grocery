class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.datetime :order_date
      t.string :status

      t.timestamps null: false
    end
  end
end

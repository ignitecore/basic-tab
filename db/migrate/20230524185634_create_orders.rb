class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :item, null: false, foreign_key: true
      t.references :addon, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end

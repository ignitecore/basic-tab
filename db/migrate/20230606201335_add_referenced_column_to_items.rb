class AddReferencedColumnToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :orders, null: false, foreign_key: true
  end
end

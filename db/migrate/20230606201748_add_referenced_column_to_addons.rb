class AddReferencedColumnToAddons < ActiveRecord::Migration[7.0]
  def change
    add_reference :addons, :orders, null: false, foreign_key: true
  end
end

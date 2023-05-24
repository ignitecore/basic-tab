class CreateAddons < ActiveRecord::Migration[7.0]
  def change
    create_table :addons do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end

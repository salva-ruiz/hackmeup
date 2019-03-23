class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: :uuid do |t|
      t.integer :code
      t.string :name
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end

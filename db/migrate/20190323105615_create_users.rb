class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :code
      t.boolean :active
      t.string :picture_url
      t.integer :age
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end

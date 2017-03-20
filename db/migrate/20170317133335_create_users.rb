class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :phone
      t.string :birthdate
      t.string :street_address
      t.string :country
      t.string :region
      t.string :city
      t.string :zip

      t.timestamps null: false
    end
    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end

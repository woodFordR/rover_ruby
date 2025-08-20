class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :track_visits, default: 0
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end

    add_index :users, :username, unique: true
    add_index :users, :email
    add_index :users, :confirmation_token, unique: true
    add_index :users, :remember_token, unique: true
  end
end

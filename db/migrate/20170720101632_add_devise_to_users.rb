class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      t.add_column :sign_in_count, :integer, :default => 0
      t.add_column :current_sign_in_at, :datetime
      t.add_column :last_sign_in_at, :datetime
      t.add_column :current_sign_in_ip, :string
      t.add_column :last_sign_in_ip, :string

      add_index :users, :email, unique: true
    end
  end
end

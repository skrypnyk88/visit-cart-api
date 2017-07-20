class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :phone
      t.string :city
      t.string :streat
      t.string :building
      t.string :email
      t.string :company_name
      t.boolean :visible, default: true
      t.timestamps
    end
  end
end

class SorceryCore < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.string :first_name
      t.string :last_name
      t.integer :role
      t.string :avatar

      t.timestamps                null: false
    end
  end
end

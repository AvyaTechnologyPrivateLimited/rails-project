class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :password
      t.date :dob
      t.string :email_id
      t.bigint :phone

      t.timestamps null: false
    end
  end
end

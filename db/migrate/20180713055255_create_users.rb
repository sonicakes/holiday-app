class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.text :password_digest
      t.integer :age
      t.timestamps
    end
  end
end

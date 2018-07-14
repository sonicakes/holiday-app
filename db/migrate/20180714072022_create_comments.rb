class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :photo_id
      t.string :message
      t.timestamps
    end
  end
end

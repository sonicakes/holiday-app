class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :title
         t.date :created_at
         t.integer :user_id
      t.timestamps
    end
  end
end

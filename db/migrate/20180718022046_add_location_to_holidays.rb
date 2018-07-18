class AddLocationToHolidays < ActiveRecord::Migration[5.2]
  def change
    add_column :holidays, :location, :string
  end
end

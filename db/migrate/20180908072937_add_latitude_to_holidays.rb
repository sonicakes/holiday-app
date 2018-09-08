class AddLatitudeToHolidays < ActiveRecord::Migration[5.2]
  def change
    add_column :holidays, :latitude, :string
  end
end

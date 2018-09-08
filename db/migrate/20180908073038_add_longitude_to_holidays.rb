class AddLongitudeToHolidays < ActiveRecord::Migration[5.2]
  def change
    add_column :holidays, :longitude, :string
  end
end

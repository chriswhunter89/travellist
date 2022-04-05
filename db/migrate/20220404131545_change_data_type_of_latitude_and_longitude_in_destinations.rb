class ChangeDataTypeOfLatitudeAndLongitudeInDestinations < ActiveRecord::Migration[6.1]
  def change
    change_column :destinations, :latitude, :float
    change_column :destinations, :longitude, :float
  end
end

class AddColumnCityIdToLocations < ActiveRecord::Migration
  def change
    change_table :locations do |t|
      t.references :city
    end
  end
end

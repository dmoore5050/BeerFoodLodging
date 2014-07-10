class DropLocationTypeTables < ActiveRecord::Migration
  def change
    drop_table :breweries
    drop_table :brewpubs
    drop_table :bars
    drop_table :beer_stores
    drop_table :restaurants
    drop_table :lodgings
    drop_table :neighborhoods
  end
end

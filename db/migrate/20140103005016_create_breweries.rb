class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.references    :neighborhood
      t.string        :name
      t.text          :address
      t.string        :phone
      t.hstore        :hours
      t.boolean       :tours
      t.boolean       :tasting_room
      t.boolean       :growlers
      t.boolean       :bottles
      t.boolean       :food
      t.text          :summary
      t.text          :website
      t.text          :untapped_id
      t.boolean       :closed, :default => false
      t.timestamps
    end

    add_index :breweries, :name
    add_index :breweries, :hours
    add_index :breweries, :tours
    add_index :breweries, :tasting_room
    add_index :breweries, :growlers
    add_index :breweries, :bottles
    add_index :breweries, :food
  end
end

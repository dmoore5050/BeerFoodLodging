class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string        :neighborhood
      t.string        :name
      t.text          :address
      t.string        :phone
      t.hstore        :hours
      t.boolean       :tours
      t.boolean       :tasting_room
      t.boolean       :growlers
      t.boolean       :bottles
      t.boolean       :food
      t.string        :menu
      t.string        :cuisine
      t.string        :price
      t.text          :summary
      t.text          :website
      t.text          :untapped_id
      t.boolean       :closed, :default => false
      t.timestamps
    end

    add_index :locations, :name
    add_index :locations, :hours
    add_index :locations, :tours
    add_index :locations, :tasting_room
    add_index :locations, :growlers
    add_index :locations, :bottles
    add_index :locations, :food
    add_index :locations, :cuisine
    add_index :locations, :price
    add_index :locations, :neighborhood
  end
end

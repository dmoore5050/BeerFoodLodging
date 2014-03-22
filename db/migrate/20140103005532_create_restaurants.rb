class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.references :neighborhood
      t.text       :name
      t.text       :address
      t.string     :phone
      t.hstore     :hours
      t.string     :cuisine
      t.string     :price
      t.boolean    :growlers
      t.boolean    :bottles
      t.text       :summary
      t.text       :website
      t.text       :untapped_id
      t.boolean    :closed, :default => false
      t.timestamps
    end

    add_index :restaurants, :name
    add_index :restaurants, :hours
    add_index :restaurants, :growlers
    add_index :restaurants, :bottles
    add_index :restaurants, :cuisine
    add_index :restaurants, :price
  end
end

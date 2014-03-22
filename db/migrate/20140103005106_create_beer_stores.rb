class CreateBeerStores < ActiveRecord::Migration
  def change
    create_table :beer_stores do |t|
      t.references :neighborhood
      t.text       :name
      t.text       :address
      t.string     :phone
      t.hstore     :hours
      t.boolean    :growlers
      t.text       :summary
      t.text       :website
      t.text       :untapped_id
      t.boolean    :closed, :default => false
      t.timestamps
    end

    add_index :beer_stores, :name
    add_index :beer_stores, :hours
    add_index :beer_stores, :growlers
  end
end

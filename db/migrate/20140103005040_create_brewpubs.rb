class CreateBrewpubs < ActiveRecord::Migration
  def change
    create_table :brewpubs do |t|
      t.references :neighborhood
      t.text       :name
      t.text       :address
      t.string     :phone
      t.hstore     :hours
      t.boolean    :tours
      t.boolean    :growlers
      t.boolean    :bottles
      t.text       :summary
      t.text       :website
      t.text       :untapped_id
      t.boolean    :closed, :default => false
      t.timestamps
    end

    add_index :brewpubs, :name
    add_index :brewpubs, :hours
    add_index :brewpubs, :tours
    add_index :brewpubs, :growlers
    add_index :brewpubs, :bottles
  end
end

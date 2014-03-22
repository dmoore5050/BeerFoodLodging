class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.references :neighborhood
      t.text       :name
      t.text       :address
      t.string     :phone
      t.hstore     :hours
      t.boolean    :food
      t.boolean    :growlers
      t.boolean    :bottles
      t.text       :summary
      t.text       :website
      t.text       :untapped_id
      t.boolean    :closed, :default => false
      t.timestamps
    end

    add_index :bars, :name
    add_index :bars, :hours
    add_index :bars, :food
    add_index :bars, :growlers
    add_index :bars, :bottles
  end
end

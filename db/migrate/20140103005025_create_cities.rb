class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :state
      t.string :name
      t.timestamps
    end

    add_index :cities, :state
    add_index :cities, :name
  end
end

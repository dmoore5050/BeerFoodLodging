class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.references :city
      t.text       :name
      t.timestamps
    end

    add_index :neighborhoods, :name
  end
end

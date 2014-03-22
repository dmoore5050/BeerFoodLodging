class CreateLodgings < ActiveRecord::Migration
  def change
    create_table :lodgings do |t|
      t.references :neighborhood
      t.text       :name
      t.text       :address
      t.string     :phone
      t.text       :summary
      t.boolean    :closed, :default => false
      t.timestamps
    end

    add_index :lodgings, :name
  end
end

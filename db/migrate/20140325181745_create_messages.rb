class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user
      t.text       :title
      t.text       :body
      t.text       :reason
      t.timestamps
    end
  end
end

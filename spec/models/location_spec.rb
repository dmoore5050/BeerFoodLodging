require 'spec_helper'

describe Location, 'associations' do
  it { should belong_to :city }
end

describe Location, 'columns' do
  it { should have_db_column :neighborhood }
  it { should have_db_column :name }
  it { should have_db_column :address }
  it { should have_db_column :phone }
  it { should have_db_column :hours }
  it { should have_db_column :tours }
  it { should have_db_column :tasting_room }
  it { should have_db_column :growlers }
  it { should have_db_column :bottles }
  it { should have_db_column :food }
  it { should have_db_column :summary }
  it { should have_db_column :website }
  it { should have_db_column :untapped_id }
  it { should have_db_column :closed }
  it { should have_db_column :menu }
  it { should have_db_column :cuisine }
  it { should have_db_column :price }
end

describe Location, 'indexes' do
  it { should have_db_index :name }
  it { should have_db_index :hours }
  it { should have_db_index :tours }
  it { should have_db_index :tasting_room }
  it { should have_db_index :growlers }
  it { should have_db_index :bottles }
  it { should have_db_index :food }
  it { should have_db_index :cuisine }
  it { should have_db_index :price }
  it { should have_db_index :neighborhood }
end

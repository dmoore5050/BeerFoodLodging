require 'spec_helper'

describe Restaurant, 'associations' do
  it { should belong_to :neighborhood }
end

describe Restaurant, 'columns' do
  it { should have_db_column :neighborhood_id }
  it { should have_db_column :name }
  it { should have_db_column :address }
  it { should have_db_column :phone }
  it { should have_db_column :hours }
  it { should have_db_column :cuisine }
  it { should have_db_column :price }
  it { should have_db_column :growlers }
  it { should have_db_column :bottles }
  it { should have_db_column :summary }
  it { should have_db_column :website }
  it { should have_db_column :untapped_id }
  it { should have_db_column :closed }
end

describe Restaurant, 'indexes' do
  it { should have_db_index :name }
  it { should have_db_index :hours }
  it { should have_db_index :growlers }
  it { should have_db_index :bottles }
  it { should have_db_index :cuisine }
  it { should have_db_index :price }
end

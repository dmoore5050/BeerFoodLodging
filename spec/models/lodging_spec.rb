require 'spec_helper'

describe Lodging, 'associations' do
  it { should belong_to :neighborhood }
end

describe Lodging, 'columns' do
  it { should have_db_column :neighborhood_id }
  it { should have_db_column :name }
  it { should have_db_column :address }
  it { should have_db_column :phone }
  it { should have_db_column :summary }
  it { should have_db_column :closed }
end

describe Lodging, 'indexes' do
  it { should have_db_index :name }
end

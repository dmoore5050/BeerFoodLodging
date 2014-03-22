require 'spec_helper'

describe Neighborhood, 'associations' do
  it { should belong_to :city }
  it { should have_many :bars }
  it { should have_many :beer_stores }
  it { should have_many :breweries }
  it { should have_many :brewpubs }
  it { should have_many :lodgings }
  it { should have_many :restaurants }
end

describe Neighborhood, 'columns' do
  it { should have_db_column :city_id }
  it { should have_db_column :name }
end

describe Neighborhood, 'indexes' do
  it { should have_db_index :name }
end

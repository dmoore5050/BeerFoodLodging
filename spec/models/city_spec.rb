require 'spec_helper'

describe City, 'associations' do
  it { should have_many :neighborhoods }
end

describe City, 'columns' do
  it { should have_db_column :state }
  it { should have_db_column :name }
end

describe City, 'indexes' do
  it { should have_db_index :state }
  it { should have_db_index :name }
end

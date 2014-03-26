require 'spec_helper'

describe City, 'associations' do
  it { should have_many :neighborhoods }
end

describe City, 'columns' do
  it { should have_db_column :name }
  it { should have_db_column :state }
end

describe City, 'indexes' do
  it { should have_db_index :name }
  it { should have_db_index :state }
end

describe City, 'validations' do
  it { should validate_presence_of   :name }
  it { should validate_presence_of   :state }
  it { should validate_uniqueness_of :name }
end

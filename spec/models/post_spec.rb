require 'spec_helper'

describe Post, 'associations' do
  it { should belong_to :user }
  it { should have_many :comments }
end

describe Post, 'columns' do
  it { should have_db_column :user_id }
  it { should have_db_column :title }
  it { should have_db_column :body }
  it { should have_db_column :category }
  it { should have_db_column :tags }
  it { should have_db_column :published_on }
end

describe Post, 'indexes' do
  it { should have_db_index :category }
  it { should have_db_index :tags }
end

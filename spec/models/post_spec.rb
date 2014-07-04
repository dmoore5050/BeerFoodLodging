require 'spec_helper'

describe Post, 'associations' do
  it { should belong_to :user }
  it { should belong_to :category }
  it { should have_many :comments }
end

describe Post, 'columns' do
  it { should have_db_column :user_id }
  it { should have_db_column :title }
  it { should have_db_column :body }
  it { should have_db_column :category_id }
  it { should have_db_column :published_on }
end

describe Post, 'validations' do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_presence_of :category_id }
end

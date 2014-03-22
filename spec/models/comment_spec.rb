require 'spec_helper'

describe Comment, 'associations' do
  it { should belong_to :post }
  it { should belong_to :user }
end

describe Comment, 'columns' do
  it { should have_db_column :post_id }
  it { should have_db_column :user_id }
  it { should have_db_column :body }
end

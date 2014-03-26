require 'spec_helper'

describe Message, 'associations' do
  it { should belong_to :user }
end

describe Message, 'columns' do
  it { should have_db_column :title }
  it { should have_db_column :body }
  it { should have_db_column :reason }
  it { should have_db_column :read }
end
require 'spec_helper'

describe User, 'associations' do
  it { should have_many :posts }
  it { should have_many(:comments).through :posts }
end

describe User, 'columns' do
  it { should have_db_column :email }
  it { should have_db_column :reset_password_token }
  it { should have_db_column :reset_password_sent_at }
  it { should have_db_column :encrypted_password }
  it { should have_db_column :current_sign_in_at }
  it { should have_db_column :last_sign_in_at }
  it { should have_db_column :current_sign_in_ip }
  it { should have_db_column :remember_created_at }
  it { should have_db_column :sign_in_count }
  it { should have_db_column :last_sign_in_ip }
  it { should have_db_column :created_at }
  it { should have_db_column :updated_at }
  it { should have_db_column :username }
  it { should have_db_column :admin }
end

describe User, 'indexes' do
  it { should have_db_index :email }
  it { should have_db_index :reset_password_token }
end
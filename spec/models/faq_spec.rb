require 'spec_helper'

describe Faq, 'columns' do
  it { should have_db_column :question }
  it { should have_db_column :answer }
end
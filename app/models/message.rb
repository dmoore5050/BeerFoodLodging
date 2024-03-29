class Message < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user
  validates_presence_of :title
  validates_presence_of :body
end

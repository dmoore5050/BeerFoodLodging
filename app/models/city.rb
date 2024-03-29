class City < ActiveRecord::Base
  has_many :locations

  validates_presence_of   :name
  validates_presence_of   :state
  validates_uniqueness_of :name
end

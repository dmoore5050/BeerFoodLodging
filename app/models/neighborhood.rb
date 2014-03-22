class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many   :bars
  has_many   :beer_stores
  has_many   :brewpubs
  has_many   :breweries
  has_many   :lodgings
  has_many   :restaurants
end

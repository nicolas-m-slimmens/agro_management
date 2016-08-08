class Field < ActiveRecord::Base
  has_many :parcels
  belongs_to :user
end

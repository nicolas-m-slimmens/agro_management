class Fertilization < ActiveRecord::Base
  belongs_to :parcel
  belongs_to :registered_supply
  belongs_to :provider
end

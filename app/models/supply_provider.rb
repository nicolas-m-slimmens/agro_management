class SupplyProvider < ActiveRecord::Base
  belongs_to :provider
  belongs_to :registered_supply
end

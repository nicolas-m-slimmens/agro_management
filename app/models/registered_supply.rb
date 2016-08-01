class RegisteredSupply < ActiveRecord::Base
  has_many :supply_providers
end

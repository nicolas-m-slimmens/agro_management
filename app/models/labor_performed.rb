class LaborPerformed < ActiveRecord::Base
  belongs_to :parcel
  belongs_to :registered_labor
  belongs_to :provider
end

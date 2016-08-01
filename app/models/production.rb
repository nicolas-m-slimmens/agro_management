class Production < ActiveRecord::Base
  belongs_to :parcel
  belongs_to :crop
end

class Contact < ActiveRecord::Base
  validates_formatting_of :email_address, using: :email
end

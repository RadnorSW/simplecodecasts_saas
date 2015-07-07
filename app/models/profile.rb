class Profile < ActiveRecord::Base
  belongs_to :user
#   validates :first_name, presence: true
#   vaildates :last_name, presence: true
#   vaildates :contact_email, presence: true
end
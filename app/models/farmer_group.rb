class FarmerGroup < ApplicationRecord
  has_many :farmers
  belongs_to :secretary_farmer, class_name: 'Farmer', required: false
end

class Contact < ApplicationRecord
  belongs_to :contact_book
  has_many :cars

  validates :name, presence: true
  :phone_number
  :instagram
  :address
  :note
end

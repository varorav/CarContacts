class ContactBook < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :cars, through: :contacts

  def self.create_for_user(user)
    ContactBook.create(user: user)
  end
end

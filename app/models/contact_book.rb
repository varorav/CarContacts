class ContactBook < ApplicationRecord
  belongs_to :user
  has_many :contacts, optional: true
  has_many :cars, through: :contacts, optional: true

  def self.create_for_user(user)
    ContactBook.create(user: user)
  end
end

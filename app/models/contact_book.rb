class ContactBook < ApplicationRecord
  belongs_to :user

  def self.create_for_user(user)
    ContactBook.create(user: user)
  end
end

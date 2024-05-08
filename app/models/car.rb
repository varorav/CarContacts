class Car < ApplicationRecord
  belongs_to :contact

  validates :chassis, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :trim, presence: true
  validates :color, presence: true
end

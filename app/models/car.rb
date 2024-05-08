class Car < ApplicationRecord
  validates :chassis, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :trim, presence: true
  validates :color, presence: true
end

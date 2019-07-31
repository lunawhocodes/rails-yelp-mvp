class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  has_many :reviews, dependent: :destroy
end

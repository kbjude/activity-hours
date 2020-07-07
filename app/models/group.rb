class Group < ApplicationRecord
  validates :description, presence: true, length: { maximum: 40 }

  belongs_to :user, dependent: :destroy
  has_many :grouphours, dependent: :destroy
  has_many :hours, through: :grouphours, source: :hour
end

class Hour < ApplicationRecord
  validates :hours, prescence: true, numericality: { only_integer: true }

  has_many :grouphours, dependent: :destroy
  has_many :groups, through: :grouphours, source: :group
  belongs_to :user, dependent: :destroy
end

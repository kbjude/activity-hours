class Hour < ApplicationRecord
    has_many :grouphours , dependent: :destroy
    has_many :groups, through: :grouphours, source: :group
  validates :hours, prescence: true, numericality: { only_integer: true }
end

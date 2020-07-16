class Hour < ApplicationRecord
  validates :hours, presence: true, numericality: { only_integer: true }
end

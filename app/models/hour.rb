class Hour < ApplicationRecord
  has_many_attached :uploads
  validates :hours, presence: true, numericality: { only_integer: true }

  has_many :grouphours, dependent: :destroy
  has_many :groups, through: :grouphours, source: :group
  belongs_to :user, dependent: :destroy
end

public

def totalhours(user)
  user.hours.sum(:hours)
end

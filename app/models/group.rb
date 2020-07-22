class Group < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }

  belongs_to :user, dependent: :destroy
  has_many :grouphours, dependent: :destroy
  has_many :hours, through: :grouphours, source: :hour
  has_one_attached :icon
  has_many_attached :uploads
end

public
def grouptotalhours(group)
  group.hours.sum(:hours)
end
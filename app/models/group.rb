class Group < ApplicationRecord
  validates :description, presence: true, length: { maximum: 40 }
end

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }

  has_many :hours, dependent: :destroy
  has_many :groups, dependent: :destroy
end

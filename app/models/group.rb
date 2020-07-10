class Group < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }

  belongs_to :user, dependent: :destroy
  has_many :grouphours, dependent: :destroy
  has_many :hours, through: :grouphours, source: :hour
  has_one_attached :icon
end

# def thumbnail
  # return self.icon.variant(resize: '200x200').processed
# end

def resize_image
  resized_image = MiniMagick::Image.read(icon.download)
  resized_image = resized_image.resize "400x400"
  v_filename = obj.filename
  v_content_type = obj.content_type
  obj.purge
  obj.attach(io: File.open(resized_image.path), filename:  v_filename, content_type: v_content_type)
end
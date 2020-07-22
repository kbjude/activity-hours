module GroupsHelper
  def attached
    @groups.each do |group|
      concat image_tag(group.icon.variant(resize: '200 x 200')) if group.icon.attached?
    end
  end

  def uploads
    @group.uploads.each do |upload|
      if upload.variable?
        concat image_tag(upload.variant(resize: '400 x 400'))
      elsif upload.previewable?
        concat link_to image_tag(resize.uploads.preview('400 x 400'), upload)
      elsif upload.image?
        concat link_to image_tag(resize.uploads.preview('400 x 400'), upload)
      end
    end
  end

  def attachment
    image_tag(@group.icon.variant(resize: '200 x 200')) if @group.icon.attached?
  end
end

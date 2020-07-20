module GroupsHelper
    def attached
        if group.icon.attached?
            concat image_tag(group.icon.variant(resize: '200 x 200'))
        end
    end
end

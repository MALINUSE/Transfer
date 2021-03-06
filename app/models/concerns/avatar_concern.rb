module AvatarConcern
  extend ActiveSupport::Concern
  included do
    has_attached_file :avatar,
                      :styles => {
                          :medium => "300x300>",
                          :thumb => "100x100>"
                      },
                      :default_url => "/public/system/images.png"

    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  end
end
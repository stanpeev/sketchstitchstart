class DesignImage
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  embedded_in :design, inverse_of: :design_images

  has_mongoid_attached_file :image, styles: { medium: "1000x800#", small: "350x250>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

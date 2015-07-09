class Design
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title,         type: String
  field :description,   type: String
  field :style,         type: String

  belongs_to :designer

  has_mongoid_attached_file :image, styles: { medium: "1000x800#", small: "350x250>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

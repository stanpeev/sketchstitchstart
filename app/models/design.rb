class Design
  include Mongoid::Document
  include Mongoid::Timestamps

  field :_id,           type: String, default: ->{ title.to_s.parameterize }

  # Getting Started
  field :title,         type: String
  field :category,      type: String
  field :description,   type: String 
  field :design_image,  type: String

  # Inspiration
  field :inspiration_desc, type: String
  field :insp_image,       type: String

  belongs_to :designer
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"

  mount_uploader :design_image, DesignImageUploader
  mount_uploader :insp_image, InspImageUploader
end

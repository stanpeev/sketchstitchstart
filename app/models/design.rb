class Design
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title,         type: String
  field :description,   type: String
  field :category,      type: String

  field :description,   type: String
  field :_id,           type: String, default: ->{ title.to_s.parameterize }
  field :design_image,  type: String

  belongs_to :designer
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"

  mount_uploader :design_image, DesignImageUploader
end

class Design
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title,         type: String
  field :description,   type: String
  field :category,      type: String

  field :description,   type: String
  field :_id,           type: String, default: ->{ title.to_s.parameterize }

  belongs_to :designer
  embeds_many :design_images
  accepts_nested_attributes_for :design_images, allow_destroy: true
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
end

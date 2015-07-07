class Design
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :style, type: String
end

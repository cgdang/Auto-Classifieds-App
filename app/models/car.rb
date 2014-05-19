class Car

  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :picture

  validates_attachment_content_type :picture , :content_type => /\Aimage\/.*\Z/
  
  field :year, type: Integer
  field :make, type: String
  field :model_name, type: String
  field :mileage, type: String
  field :ext_color, type: String
  field :int_color, type: String
  field :engine, type: String
  field :transmission, type: String
  field :drivetrain, type: String
  field :fuel, type: String
  field :door_count, type: String
  field :description, type: String
  field :price, type: String
  field :contact_email, type: String

  belongs_to :user

end

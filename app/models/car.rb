class Car

  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :picture

  validates_attachment_content_type :picture , :content_type => /\Aimage\/.*\Z/

  field :year, type: Integer
  field :make, type: String
  field :car_model, type: String
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

  validates_length_of :year, minimum: 4, maximum: 4, message: "Year required (ex. 2014) "
  validates_numericality_of :year, message: "Year required"
  validates_presence_of :make, message: "Make required"
  validates_presence_of :car_model, message: "Model required"
  validates_presence_of :mileage, message: "Mileage required"
  validates_presence_of :ext_color, message: "Exterior color required"
  validates_presence_of :int_color, message: "Interior color required"
  validates_presence_of :engine, message: "Engine required"
  validates_inclusion_of :transmission, in: [ 'Automatic', 'Manual' ], message: "Transmission required"
  validates_inclusion_of :drivetrain, in: [ 'Front Wheel Drive', 'Rear Wheel Drive', 'AWD/4WD' ], message: "Drivetrain required"
  validates_inclusion_of :fuel, in: [ 'Gasoline', 'Diesel', 'Hybrid', 'Electric', 'Alternative' ], message: "Fuel type required"
  validates_inclusion_of :door_count, in: [ 'Two Door', 'Three Door', 'Four Door', 'Five Door' ], message: "Door count required"
  validates_presence_of :description, message: "Description required"
  validates_presence_of :price, message: "Price required"
  validates_presence_of :contact_email, message: "Contact email required"
  validates_presence_of :picture, message: "Picture of car required"


  belongs_to :user

end

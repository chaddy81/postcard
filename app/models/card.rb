class Card
  include Mongoid::Document
  field :name, :type => String
  field :message, :type => String

  has_attached_file :photo,
       :styles => {
       :thumb=> "200x200#",
       :small  => "400x400#" },
     :storage => :s3,
     :s3_credentials => "#{Rails.root}/config/s3.yml",
     :path => "/:attachment/:id/:style.:extension"
end

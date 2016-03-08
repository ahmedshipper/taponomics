class Product < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { medium: "400x200#" }, :default_url => "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

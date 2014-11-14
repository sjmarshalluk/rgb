class Brewery < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :address_one, presence: true
	validates :city, presence: true
	validates :county, presence: true
	validates :postcode, presence: true
	validates :website, presence: true, uniqueness: true


	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	geocoded_by :address
	after_validation :geocode

	def address
	  [address_one, address_two, city, county, post_code].compact.join(', ')
	end

end

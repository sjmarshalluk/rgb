class Brewery < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :website, presence: true, uniqueness: true
	validates :user_email, presence: true


	has_attached_file :image, 
		:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
		:default_url => "/images/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	geocoded_by :address
	after_validation :geocode

	def address
	  [address_one, address_two, city, county, post_code].compact.join(', ')
	end

	scope :published, -> { where(approved: true) }

end



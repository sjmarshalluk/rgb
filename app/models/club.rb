class Club < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :website, presence: true, uniqueness: true

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  	scope :published, -> { where(approved: true) }
end

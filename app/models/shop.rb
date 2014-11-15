class Shop < ActiveRecord::Base
	validates :name, presence: true
	validates :website, presence: true
	validates :user_email, presence: true
end

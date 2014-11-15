class Shop < ActiveRecord::Base
	validates :name, presence: true
	validates :website, presence: true
end

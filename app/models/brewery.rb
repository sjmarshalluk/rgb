class Brewery < ActiveRecord::Base

	validates :name, presence: true
	validates :brewery_type, presence: true
	validates :description, presence: true
	validates :year_opened, presence: true
	validates :year_closed, presence: true
	validates :head_brewer, presence: true
	validates :founder, presence: true
	validates :core_range, presence: true
	validates :seasonals, presence: true
	validates :changing, presence: true
	validates :where_to_buy, presence: true
	validates :website, presence: true
	validates :twitter, presence: true
	validates :facebook, presence: true
	validates :instagram, presence: true
	validates :untappd, presence: true
	validates :ratebeer, presence: true



end

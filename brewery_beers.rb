require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://untappd.com/TheFivePointsBrewingCompany/beer"
doc = Nokogiri::HTML(open(url))
doc.css(".beer-item").each do |item|
	title = item.at_css(".name").text
	puts item.at_css(".name")[:href]
end


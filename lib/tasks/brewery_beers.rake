desc "Fetch beers"
task :fetch_beers => :environment do

	require 'nokogiri'
	require 'open-uri'

	Brewery.each do |beer|
	url = "https://untappd.com/TheFivePointsBrewingCompany/beer"
	doc = Nokogiri::HTML(open(url))
	doc.css(".beer-item").each do |item|
		title = item.at_css(".name").text
	end

end
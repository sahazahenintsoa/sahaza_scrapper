require 'rspec'
 require 'nokogiri'
require 'open-uri'
symbol = []
price = []
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

 page.xpath('//*[@class="text-left col-symbol"]').each do |s|
	 symbol << s.text
end
 page.xpath('//*[@class="price"]').each do |a|
 price << a.text
 end
 e = Hash[symbol.zip(price.map {|i| i.include?(',') ? (i.split /, /) : i})]
 #puts e
			 ville = []
			 email = []
			page1 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
			page1.xpath('//*[@class="lientxt"]').each do |commune|
			ville << commune.text
				#puts ville
			end
			def get_townhall_email(townhall_url)
			page2 = Nokogiri::HTML(open(townhall_url))
			 page2.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |m|
				
				#puts m
			end
		end
			get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")
		
			
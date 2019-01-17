require 'rspec'
 require 'nokogiri'
require 'open-uri'
def get_townhall_email(townhall_url)
				page2 = Nokogiri::HTML(open(townhall_url))
			 page2.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |m|
						#puts m
			end
		end
			get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")
def get_townhall_urls
url = []
page3 = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
page3.xpath('//a[@class="lientxt"]').each do |u| 
url << u["href"]
#puts url
end
end
get_townhall_urls
def get_townhall_emails(get_townhall_urls)
lien = get_townhall_urls
sah = []
lien.each do |hen|
page4 = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/#{hen}"))
 page4.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |h|
 sah << h.text
end
end
return sah

end
get_townhall_emails(get_townhall_urls)
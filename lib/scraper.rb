require 'open-uri'
require 'nokogiri'
require 'pry'
class Scraper
  @index_array=[]
  def self.scrape_index_page(index_url)
    html=open(index_url)
    doc=Nokogiri::HTML(html)
    elements=doc.css(".student-card")
    hash={}
    elements.collect do |element|
  #     binding.pry
      hash[:name]=element.css("h4.student-name").text
      hash[:location]=element.css(".student-location").text
      hash[:profile_url]=element.css("a").attribute("href").value
      @index_array<<hash
    end
  end
  def self.scrape_profile_page(profile_url)

  end
end

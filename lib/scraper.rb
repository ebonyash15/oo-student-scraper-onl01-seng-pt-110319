require 'open-uri'
require 'nokogiri'
require 'pry'
class Scraper
  @index_array=[]
  def self.scrape_index_page(index_url)
    html=open(index_url)
    doc=Nokogiri::HTML(html)
    elements=doc.css(".student-card")
    elements.collect do |element|
      element = student.new
    end
  end
  def self.scrape_profile_page(profile_url)

  end
end

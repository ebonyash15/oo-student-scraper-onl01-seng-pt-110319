class Student
  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url
  @@all = []
  def initialize(student_hash)
    binding.pry
     hash[:name]=Scraper.element.css("h4.student-name").text
     hash[:location]=Scraper.element.css(".student-location").text
     hash[:profile_url]=Scraper.element.css("a").attribute("href").value
     @index_array<<hash
  end
  def self.create_from_collection(students_array)

  end
  def add_student_attributes(attributes_hash)

  end
  def self.all

  end
end

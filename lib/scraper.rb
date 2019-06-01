require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
  page = Nokogiri::HTML(open(index_url))
  students = []
stud
  page.css("div.student-card").each do |stud|
    name = stud.css(".student-name").text
    location = stud.css(".student-location").text
    profile_url = stud.css("a").attribute("href").value
    student_info = {:name => name,
              :location => location,stud
              :profile_url => profile_url}
    students << student_info
    end
  students
 end
  def self.scrape_profile_page(profile_url)

  end

end

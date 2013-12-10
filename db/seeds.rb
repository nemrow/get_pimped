require 'open-uri'

doc = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/List_of_medical_schools_in_the_United_States'))

doc.css('table.wikitable:nth-child(1) tr td:nth-child(2)').each do |school_node|
  School.create(:name => school_node.text.strip)
end
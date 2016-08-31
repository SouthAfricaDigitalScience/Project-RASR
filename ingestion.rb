#!/bin/ruby
require 'rubygems'
require 'nokogiri'

@submission = Nokogiri::XML(open('invenio-upload-template.xml'))
@submission.xpath('//datafield').each do |datafield|
  puts "This is a #{datafield.class} class with #{datafield.count} elements"
  puts "this submission has #{@submission.xpath('//datafield/subfield').count} subfields"

end


puts "loop over children"
@submission.children.each do |child|
  puts child.content
end


puts "search for the "

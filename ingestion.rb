#!/bin/ruby
require 'rubygems'
require 'nokogiri'

submission = Nokogiri::XML(open("invenio-upload-template.xml"))

#!/bin/ruby

# this script will get the list of objects from the OAR and print them to the screen.
# It uses the Invenio search API - https://cds.cern.ch/help/hacking/search-engine-api?ln=en

require 'HTTParty'
require 'pp'
# you can use awesomeprint instead of prettyprint
# require 'awesome_print  '
require 'json'

response = HTTParty.get("http://oar.sci-gaia.eu/search?p=svm&of=xm")

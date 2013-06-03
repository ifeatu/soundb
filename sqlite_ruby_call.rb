#!/usr/bin/ruby

require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.new( "sufferings_of_present_time.db" )
#row = db.get_first_row( "SELECT name FROM `media` where id=19" )
#rows = db.execute( "SELECT name FROM `media`" )

media = db.execute("SELECT media_name FROM search_wtf ")
search = db.execute("SELECT arg4 FROM search_criterion")
confidence = db.execute("SELECT score FROM search_wtf")

puts "Your search for: #{search[4]} yielded: " 

count=0
confidence.each do |num|
    count=count + 1
    val=num[0].to_f*100
    val=val.ceil
    puts "#{media[count]} : #{val}%"
  end
  


# 
# confidence.each do |num|
#     val=num[1]
#     name=val[0]
#     percentage=val[0]*100
#     puts name  percentage.ceil  
# end



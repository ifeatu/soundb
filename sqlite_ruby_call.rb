#!/usr/bin/ruby

require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.new( "default.db" )
#row = db.get_first_row( "SELECT name FROM `media` where id=19" )
#rows = db.execute( "SELECT name FROM `media`" )

media = db.execute("SELECT name FROM media")
search = db.execute("SELECT arg4 FROM search_criterion")


confidence = db.execute("SELECT score FROM search_wtf")

puts "Your search for: #{search[0]} Yielded: " 

confidence.each do |num|
    val=num[0].to_f*100
    val=val.ceil
    puts "#{media[0]} : #{val}"
  end
  


# 
# confidence.each do |num|
#     val=num[1]
#     name=val[0]
#     percentage=val[0]*100
#     puts name  percentage.ceil  
# end



require 'rubygems'
require 'relaxdb'

RelaxDB.configure :host => "localhost", :port => 5984
RelaxDB.use_db "test_db" 

class User < RelaxDB::Document
  property :first_name
  property :last_name
  property :twitter
end

doc = User.new(:first_name => "brian", :last_name => "smith", :twitter => "brianthecoder")
doc.save

puts doc.inspect
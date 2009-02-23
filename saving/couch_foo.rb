require 'rubygems'
require 'couch_foo'

CouchFoo::Base.set_database(:host => "http://localhost:5984", :database => "test_db")

class User < CouchFoo::Base
  property :first_name
  property :last_name
  property :twitter
end

doc = User.create(:first_name => "brian", :last_name => "smith", :twitter => "brianthecoder")

puts doc.inspect
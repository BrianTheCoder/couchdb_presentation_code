require 'rubygems'
require 'dm-core'


DataMapper.setup(:default, "couchdb://localhost:5984/test_db")

class User
  include DataMapper::CouchResource
  
  property :first_name, String
  property :last_name, String
  property :twitter, String
end

doc = User.create(:first_name => "brian", :last_name => "smith", :twitter => "brianthecoder")

puts doc.inspect
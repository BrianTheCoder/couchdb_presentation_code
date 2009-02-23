require 'rubygems'
require 'couch_potato'

CouchPotato::Config.database_name = 'test_db'

class User
  include CouchPotato::Persistence
  
  property :first_name
  property :last_name
  property :twitter
end

doc = User.create(:first_name => "brian", :last_name => "smith", :twitter => "brianthecoder")

puts doc.inspect
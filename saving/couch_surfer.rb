require 'rubygems'
require 'couch_surfer'

CouchSurfer::Model.default_database = CouchRest.database!('test_db')

class User
  include CouchSurfer::Model

  key_accessor :first_name, :last_name, :twitter
end

doc = User.create(:first_name => "brian", :last_name => "smith", :twitter => "brianthecoder")

puts doc.inspect
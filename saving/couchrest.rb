require 'rubygems'
require 'couchrest'

@db = CouchRest.database!("http://127.0.0.1:5984/test_db")
response = @db.save({:first_name => "brian", "last_name" => "smith", :twitter => "brianthecoder"})
doc = @db.get(response['id'])

puts doc.inspect
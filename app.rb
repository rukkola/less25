require 'sqlite3'
db = SQLite3::Database.new 'mydatabase.sqlite'

# db.execute "INSERT INTO Cars (Name, Price) VALUES ('Vaz', 777)"

db.execute "SELECT * FROM Cars" do |car|
	puts car
	puts '------'	
end

db.close
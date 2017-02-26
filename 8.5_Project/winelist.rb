#Create a program that takes a wine selection, stores the information in a database,
#and allows retrieval from database.

#require gems
require 'sqlite3'

#initialize database
db = sqlite3::Database.new("wine.db")

#create table command. Skip if table already exists.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS winelist(
    id INTEGER PRIMARY KEY,
    wine_type VARCHAR(255),
    region VARCHAR(255)
    rating INTEGER
  )
SQL

#create a wine table 
db.execute(create_table_cmd)

#test adding a bottle of wine
db.execute(INSERT INTO wineList(wine_type,region,rating) VALUES("Malbec","Sonoma County",96))
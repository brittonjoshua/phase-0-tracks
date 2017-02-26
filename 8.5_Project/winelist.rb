#Create a program that takes a wine selection, stores the information in a database,
#and allows retrieval from database.

#require gems
require 'sqlite3'

#initialize database
db = sqlite3::Database.new("wine.db")

#create table upon initialization. Skip if table already exists.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS winelist(
    id INTEGER PRIMARY KEY,
    wine_type VARCHAR(255),
    region VARCHAR(255)
    rating FLOAT(2)
  )
SQL

#Create a program that takes a wine selection, stores the information in a database,
#and allows retrieval from database.

#require gems
require 'sqlite3'
require 'faker'

#initialize database
db = sqlite3::Database.new("wine.db")

#define a wine table string.
wine_type_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wine_type(
    id INTEGER PRIMARY KEY,
    wine_name VARCHAR(100),
    vineyard VARCHAR(150),
    vintage_year INTEGER,
    rating INTEGER,
    region_id INTEGER FOREIGN KEY
  )
SQL
#dfine a wine region string.
region_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS region(
    id INTEGER PRIMARY KEY,
    state VARCHAR(100),
    country VARCHAR(150)
  )
SQL

#create a wine table 
db.execute(wine_type_table_cmd)

#test adding a bottle of wine
db.execute("INSERT INTO wine_type (wine_name,vineyard,vintage_year,rating,region_id) VALUES('Malbec','McMannis',1996,86,4)")

#test adding a region table and first region entry.
db.execute("INSERT INTO region(state,country) VALUES('California','USA')")

#method for adding wine to the wine type table.

def add_wine(db,wine_name,vineyard,vintage_year,rating,region_id)
	db.execute("INSERT INTO wine_type (wine_name, vineyard,vintage_year,rating,region_id) 
	VALUES (?,?,?,?,?)",[wine_name,vineyard,vintage_year,rating,region_id])
end 

#method for adding region to the region table.

def add_region(db, state,country)
	db.execute("INSERT INTO region (state, country) VALUES(?,?)", [state,country])
end 
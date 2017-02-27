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

#array of wine types to sample from.
wine_array = ["Chardonnay", "Sauvignon Blanc","Pinot Noir","Malbec","Cabernet","Bordeaux","Tempranillo"]

#adding wines and regions into database. Faker Twin Peaks locations used as vinyard names

40.times do 
	add_wine(db,wine_array.sample,Faker::TwinPeaks.location,Faker::Number.between(1800, 2010),Faker::Number.between(70, 100),Faker::Number.between(1, 40)
	add_region(db,Faker::Address.state,Faker::Address.country)	
end 

#Retrieve wine types in order, with the best rated wines at the top. 

sort_ratings = db.execute("SELECT * FROM wine_type ORDER BY rating DESC")


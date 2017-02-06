require 'sqlite3'

db = SQLite3::Database.new("stocklist.db")


create_stocks_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS stocks(
    id INTEGER PRIMARY KEY,
    symbol VARCHAR(255),
    price REAL,
    shares INTEGER
  )
SQL

create_stocks_sold_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS stocks_sold(
    id INTEGER PRIMARY KEY,
    symbol VARCHAR(255),
    sell REAL,
    shares INTEGER
  )
SQL

db.execute(create_stocks_cmd)
db.execute(create_stocks_sold_cmd)

def enter_stock(db, symbol, price, shares)
	db.execute("insert into stocks (symbol, price, shares) values (?, ?, ?)", [symbol, price, shares])
end

def sell_stock(db, sold_stock, sold_price, shares)
	db.execute("insert into stocks_sold (symbol, sell, shares) values (?, ?, ?)", [sold_stock, sold_price, shares])
end

puts "What stock did you purchase?"

symbol = gets.chomp

puts "What was the price?"

price = gets.to_f

puts "How many shares?"

shares = gets.to_i

enter_stock(db, symbol, price, shares)

input = false
until input
		
		sold = db.execute("select symbol from stocks")
			puts "Which stock was sold? enter done to finish"
			sold_stock = gets.chomp
			if sold.to_s.include?(sold_stock) 
				puts "What was the sold price?"
				sold_price = gets.to_f
				puts "How many shares?"
				sold_shares = gets.to_i

				sell_stock(db, sold_stock, sold_price, sold_shares)
				input = false
			elsif sold_stock == "done"
				input = true
			else
				puts "This stock is not currently owned"
				input = false
			end
		end

		
	


		
	

		

		

		







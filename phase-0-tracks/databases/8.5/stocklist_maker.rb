require 'sqlite3'

db = SQLite3::Database.new("stocklist.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS stocks(
    id INTEGER PRIMARY KEY,
    symbol VARCHAR(255),
    price INT
  )
SQL

db.execute(create_table_cmd)
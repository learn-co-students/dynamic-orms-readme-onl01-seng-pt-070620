require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/users.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  password TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true

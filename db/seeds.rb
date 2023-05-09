# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('C:\Users\tech\Desktop\project\Avito-RoR\app\assets\csv\villes.csv', headers: true) do |row|
  query = "INSERT INTO villes (nom, created_at, updated_at) VALUES ('#{row['city']}', '#{Time.now.to_s}', '#{Time.now.to_s}')"
  ActiveRecord::Base.connection.execute(query)
end



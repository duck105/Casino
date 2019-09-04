# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Setting.create!(key: "casino_name", value: "德田大賭場", description: "網站首頁title")
Setting.create!(:key => "interest_rate", :value => "10", description: "銀行利率(每分鐘, 單利)")

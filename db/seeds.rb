# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

org = Type.find_or_create_by(name: 'ORG')
gpe = Type.find_or_create_by(name: 'GPE')
money = Type.find_or_create_by(name: 'MONEY')
theme = Type.find_or_create_by(name: 'THEME')
time = Type.find_or_create_by(name: 'TIME')

s1 = Sentence.find_or_create_by(text: 'Apple is looking at buying U.K. startup for $1 billion.')
s2 = Sentence.find_or_create_by(text: 'Regional funds with exposure to United States and outperform equity market over 3 year')

apple = Entity.find_or_create_by(text: 'Apple', type_id: org.id)
gpe = Entity.find_or_create_by(text: 'U.K.', type_id: gpe.id)
money = Entity.find_or_create_by(text: '$1 billion', type_id: money.id)
regional = Entity.find_or_create_by(text: 'Regional funds', type_id: theme.id)
us = Entity.find_or_create_by(text: 'United States', type_id: gpe.id)
equity = Entity.find_or_create_by(text: 'equity_market', type_id: theme.id)
year = Entity.find_or_create_by(text: '3 year', type_id: time.id)

s1.entities << [apple, gpe, money]
s2.entities << [regional, us, equity, year]

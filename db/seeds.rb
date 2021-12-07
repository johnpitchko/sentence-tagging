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

s = Sentence.find_or_create_by(text: 'Apple is looking at buying U.K. startup for $1 billion.')

Entity.find_or_create_by(text: 'Apple', type_id: org.id, sentence_id: s.id)
Entity.find_or_create_by(text: 'U.K.', type_id: gpe.id, sentence_id: s.id)
Entity.find_or_create_by(text: '$1 billion', type_id: money.id, sentence_id: s.id)
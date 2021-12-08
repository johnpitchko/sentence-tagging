FactoryBot.define do
 factory :type do
  name { name 'SOME TYPE' }
 end

 factory :entity do
  text { 'ENTITY NAME' }
  type
 end

factory :sentence do
  text { 'SOME SENTENCE TEXT' }
end

end

# @org = Type.create!(name: 'ORG')
#       @gpe = Type.create!(name: 'GPE')
#       @money = Type.create!(name: 'MONEY')

#       @sentence = Sentence.create!(text: 'Apple is looking at buying U.K. startup for $1 billion.')

#       @apple = Entity.create!(text: 'Apple', type_id: @org.id, sentence_id: @sentence.id)
#       @uk = Entity.create!(text: 'U.K.', type_id: @gpe.id, sentence_id: @sentence.id)
#       @billion = Entity.create!(text: '$1 billion', type_id: @money.id, sentence_id: @sentence.id)
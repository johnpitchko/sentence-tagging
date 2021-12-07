require 'rails_helper'

# RSpec.describe Sentence, type: :model do
describe Sentence do
  describe 'tag_sentence' do
    before(:all) do
      @org = Type.create!(name: 'ORG')
      @gpe = Type.create!(name: 'GPE')
      @money = Type.create!(name: 'MONEY')

      @sentence = Sentence.create!(text: 'Apple is looking at buying U.K. startup for $1 billion.')

      @apple = Entity.create!(text: 'Apple', type_id: @org.id, sentence_id: @sentence.id)
      @uk = Entity.create!(text: 'U.K.', type_id: @gpe.id, sentence_id: @sentence.id)
      @billion = Entity.create!(text: '$1 billion', type_id: @money.id, sentence_id: @sentence.id)
    end

    before(:each) do
      tagged_sentence = @sentence.tagged
    end

    it 'tags all 3 entities in the sentence' do
      skip
    end
  end
end

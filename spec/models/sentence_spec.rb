# == Schema Information
#
# Table name: sentences
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

# RSpec.describe Sentence, type: :model do
describe Sentence do
  fixtures :types, :entities, :sentences


 #  before do
 #    @org = types(:org)
 #    @gpe = types(:gpe)
 #    @money = types(:money)

 #    @apple = entities(:apple)
 #    @uk = entities(:uk)
 #    @billion = entities(:billion)

 #    @sentence = sentences(:sentence_apple)
 #    @sentence.entities << [@apple, @uk, @billion]
 #  end

 #  describe 'tag_sentence' do
 #    before(:each) do
 #      tagged_sentence = @sentence.tagged
 #    end

 #    it 'tags all 3 entities in the sentence' do
 #    end
 #  end

  it 'rejects blank and nil text' do
    sentence = Sentence.create(text: '')
    expect(sentence.valid?).to be_falsey
  end
end

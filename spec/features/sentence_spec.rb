require 'rails_helper'

RSpec.feature "Sentences", type: :feature do
  before(:all) do
    @org = Type.create!(name: 'ORG')
    @gpe = Type.create!(name: 'GPE')
    @money = Type.create!(name: 'MONEY')

    @sentence = Sentence.create!(text: 'Apple is looking at buying U.K. startup for $1 billion.')

    @apple = Entity.create!(text: 'Apple', type_id: @org.id, sentence_id: @sentence.id)
    @uk = Entity.create!(text: 'U.K.', type_id: @gpe.id, sentence_id: @sentence.id)
    @billion = Entity.create!(text: '$1 billion', type_id: @money.id, sentence_id: @sentence.id)
  end

  it 'loads the main page and renders the sentence' do
    visit root_path

    expect(page).to have_text @sentence.text
    expect(page).to have_field 'selected_words', readonly: true
    expect(page).to have_select 'Entity'
    expect(page).to have_button 'Tag'
  end
end

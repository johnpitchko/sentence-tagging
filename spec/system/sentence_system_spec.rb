require 'rails_helper'

RSpec.describe 'Sentences', type: :system do
  fixtures :types, :entities, :sentences

  before do
    @org = types(:org)
    @gpe = types(:gpe)
    @money = types(:money)

    @sentence = sentences(:sentence_apple)
    @regional_sentence = sentences(:sentence_regional)

    @apple = entities(:apple)
    @uk = entities(:uk)
    @billion = entities(:billion)
  end

  it 'loads the main page and renders the sentences' do
    visit root_path

    expect(page).to have_text @sentence.text
    expect(page).to have_link 'destroy_sentence', href: sentence_path(@sentence)

    expect(page).to have_field 'entity[text]'
    expect(page).to have_select 'entity[type_id]'
    expect(page).to have_button 'Tag'
    expect(page).to have_field 'entity[sentence_id]', type: :hidden

    expect(page).to have_field 'sentence[text]'
    expect(page).to have_button 'Create Sentence'
  end

  it 'tags a word with an entity' do
    visit root_path
    find_field('entity[sentence_id]', type: :hidden).set @sentence.id
    fill_in 'entity[text]', with: 'looking'
    select 'ORG', from: 'entity[type_id]'
    click_button 'Tag'

    expect(page).to have_content 'Tag success'
  end

  it 'adds a new sentence' do
    visit root_path
    fill_in 'sentence[text]', with: @regional_sentence.text
    click_button 'Create Sentence'

    #expect(page).to have_content 'Added new sentence'
  end
end
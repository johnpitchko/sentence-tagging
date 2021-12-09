require 'rails_helper'

RSpec.describe 'Sentences', type: :system do
  fixtures :types, :entities, :sentences

  before do
    @org = types(:org)
    @gpe = types(:gpe)
    @money = types(:money)

    @sentence = sentences(:sentence_apple)

    @apple = entities(:apple)
    @uk = entities(:uk)
    @billion = entities(:billion)
  end

  it 'loads the main page and renders the sentence' do
    visit root_path

    expect(page).to have_text @sentence.text
    expect(page).to have_field 'entity[text]'
    expect(page).to have_select 'entity[type_id]'
    expect(page).to have_button 'Tag'
    expect(page).to have_field 'entity[sentence_id]', type: :hidden
  end

  # it 'tags a word with an entity', js: true do
  it 'tags a word with an entity' do
    # Capybara.javascript_driver = :selenium_chrome
    visit root_path
    fill_in 'entity[text]', with: 'looking'
    select 'ORG', from: 'entity[type_id]'
    click_button 'Tag'

    expect(page).to have_content 'Tag success'
  end
end

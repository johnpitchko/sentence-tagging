# == Schema Information
#
# Table name: entities
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type_id    :integer
#
require 'rails_helper'

RSpec.describe Entity, type: :model do
  fixtures :types, :entities, :sentences

  before do
    @org = types(:org)
    @gpe = types(:gpe)
    @money = types(:money)
  end

  it 'rejects blank and nil text' do
    entity = Entity.create(text: '', type_id: @org)
    expect(entity.valid?).to be_falsey
  end
end

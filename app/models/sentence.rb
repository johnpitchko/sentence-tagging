class Sentence < ApplicationRecord
  has_many :entities
  has_many :types, through: :entities

  def tagged
    tagged_text = text
    entities.each do |entity|
      pattern = Regexp.escape(entity.text)
      tagged_text.sub!(/(#{pattern})/, '<strong>\1</strong>')
    end
    tagged_text
  end
end
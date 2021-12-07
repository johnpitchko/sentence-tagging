class Sentence < ApplicationRecord
  has_many :entities
  has_many :types, through: :entities

  def tagged
    tagged_text = text
    entities.each do |entity|
      pattern = Regexp.escape(entity.text)
      tagged_text.sub!(/(#{pattern})/, '<mark>\1' + "<strong> #{entity.type.name}</strong></mark>")
    end
    tagged_text
  end
end
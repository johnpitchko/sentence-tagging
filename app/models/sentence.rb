# == Schema Information
#
# Table name: sentences
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Sentence < ApplicationRecord
  has_and_belongs_to_many :entities
  has_many :types, through: :entities

  validates :text, presence: true

  def tagged
    tagged_text = text
    entities.each do |entity|
      pattern = Regexp.escape(entity.text)
      tagged_text.sub!(/(#{pattern})/, "<mark class=type-#{entity.type.id}>" + '\1' + "<sup><strong> #{entity.type.name}</strong></sup></mark>")
    end
    tagged_text
  end
end

class InvalidSentenceError < StandardError
end

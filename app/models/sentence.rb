class Sentence < ApplicationRecord
  has_many :entities
  has_many :types, through: :entities
end
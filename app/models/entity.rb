class Entity < ApplicationRecord
  belongs_to :sentence
  belongs_to :type
end

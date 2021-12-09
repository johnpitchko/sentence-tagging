# == Schema Information
#
# Table name: entities
#
#  id          :integer          not null, primary key
#  text        :string
#  sentence_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type_id     :integer
#
class Entity < ApplicationRecord
  has_and_belongs_to_many :sentences
  belongs_to :type
end

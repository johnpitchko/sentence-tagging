# == Schema Information
#
# Table name: entities
#
#  id          :integer          not null, primary key
#  text        :string
#  type        :integer
#  sentence_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type_id     :integer
#
class Entity < ApplicationRecord
  belongs_to :sentence
  belongs_to :type
end

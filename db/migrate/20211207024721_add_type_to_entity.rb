class AddTypeToEntity < ActiveRecord::Migration[6.1]
  def change
    add_reference :entities, :type, foreign_key: true
  end
end

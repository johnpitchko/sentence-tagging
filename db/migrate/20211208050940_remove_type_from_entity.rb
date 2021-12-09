class RemoveTypeFromEntity < ActiveRecord::Migration[6.1]
  def change
    remove_column :entities, :type
  end
end

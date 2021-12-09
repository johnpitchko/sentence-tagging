class RemoveSentenceIdFromEntities < ActiveRecord::Migration[6.1]
  def change
    remove_index :entities, :sentence_id
    remove_foreign_key :entities, :sentences
    remove_column :entities, :sentence_id
  end
end

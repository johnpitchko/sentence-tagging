class CreateSentencesEntitiesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :sentences, :entities do |t|
      t.index :sentence_id
      t.index :entity_id
    end

    drop_table :sentences_and_entities
  end
end

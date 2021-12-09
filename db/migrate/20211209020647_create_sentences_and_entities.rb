class CreateSentencesAndEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :sentences_and_entities do |t|
      t.belongs_to :sentence, null: false, foreign_key: true
      t.belongs_to :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.string :text
      t.integer :type
      t.references :sentence, null: false, foreign_key: true

      t.timestamps
    end
  end
end

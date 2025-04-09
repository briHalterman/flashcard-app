class CreateDeckSubtopics < ActiveRecord::Migration[8.0]
  def change
    create_table :deck_subtopics do |t|
      t.integer :deck_id
      t.integer :subtopic_id

      t.timestamps
    end
  end
end

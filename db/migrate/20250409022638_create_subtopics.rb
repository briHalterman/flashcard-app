class CreateSubtopics < ActiveRecord::Migration[8.0]
  def change
    create_table :subtopics do |t|
      t.string :name
      t.integer :topic_id

      t.timestamps
    end
  end
end

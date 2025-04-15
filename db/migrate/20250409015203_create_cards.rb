class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.string :term
      t.string :definition
      t.integer :user_id

      t.timestamps
    end
  end
end

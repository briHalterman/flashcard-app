class CreateCardDecks < ActiveRecord::Migration[8.0]
  def change
    create_table :card_decks do |t|
      t.integer :deck_id
      t.integer :card_id

      t.timestamps
    end
  end
end

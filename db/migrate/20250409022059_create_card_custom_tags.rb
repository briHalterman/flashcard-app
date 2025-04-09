class CreateCardCustomTags < ActiveRecord::Migration[8.0]
  def change
    create_table :card_custom_tags do |t|
      t.integer :card_id
      t.integer :custom_tag_id

      t.timestamps
    end
  end
end

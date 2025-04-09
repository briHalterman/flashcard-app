class CreateCustomTags < ActiveRecord::Migration[8.0]
  def change
    create_table :custom_tags do |t|
      t.string :keyword

      t.timestamps
    end
  end
end

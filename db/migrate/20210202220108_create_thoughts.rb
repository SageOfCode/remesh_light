class CreateThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :thoughts do |t|
      t.string :text
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end

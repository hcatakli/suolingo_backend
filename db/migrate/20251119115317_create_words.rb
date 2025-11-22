class CreateWords < ActiveRecord::Migration[8.0]
  def change
    create_table :words do |t|
      t.references :course, null: false, foreign_key: true
      t.string :term
      t.text :definition
      t.text :example_sentence
      t.string :level
      t.string :category

      t.timestamps
    end
  end
end

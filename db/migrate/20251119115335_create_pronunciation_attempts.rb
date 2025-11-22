class CreatePronunciationAttempts < ActiveRecord::Migration[8.0]
  def change
    create_table :pronunciation_attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.string :recording_url
      t.float :score
      t.text :feedback
      t.datetime :attempted_at

      t.timestamps
    end
  end
end

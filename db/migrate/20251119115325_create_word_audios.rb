class CreateWordAudios < ActiveRecord::Migration[8.0]
  def change
    create_table :word_audios do |t|
      t.references :word, null: false, foreign_key: true
      t.string :audio_url
      t.string :speaker_name
      t.string :accent
      t.float :duration

      t.timestamps
    end
  end
end

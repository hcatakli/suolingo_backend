class CreateWordVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :word_videos do |t|
      t.references :word, null: false, foreign_key: true
      t.string :video_url
      t.string :speaker_name
      t.string :accent
      t.float :duration

      t.timestamps
    end
  end
end

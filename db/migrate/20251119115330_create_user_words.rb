class CreateUserWords < ActiveRecord::Migration[8.0]
  def change
    create_table :user_words do |t|
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.string :status
      t.datetime :last_practiced_at
      t.integer :practice_count

      t.timestamps
    end
  end
end

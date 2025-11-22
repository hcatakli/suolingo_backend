class Word < ApplicationRecord
  belongs_to :course
  has_many :word_audios
  has_many :user_words
  has_many :pronunciation_attempts
  has_many :quizzes
  has_many :word_videos, dependent: :destroy  # << Bu satır eksikse ekle

end

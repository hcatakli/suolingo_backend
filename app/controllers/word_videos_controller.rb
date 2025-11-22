class WordVideosController < ApplicationController
  protect_from_forgery with: :null_session  # Postman için önemli

  # Kelimenin tüm videolarını listele
  def index_for_word
    word = Word.find(params[:word_id])  # burası doğru mu?
    render json: word.word_videos
  end
end

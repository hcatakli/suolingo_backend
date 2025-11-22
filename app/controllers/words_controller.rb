class WordsController < ApplicationController
  def show
    word = Word.find(params[:id])
    render json: word
  end

  # GET /words/:id/audios
  def audios
    word = Word.find(params[:word_id])
    render json: word.word_audios
  end

  # GET /words/:id/video
  def video
    render json: {
      word_id: params[:id],
      video_url: "https://cdn.example.com/word_videos/#{params[:id]}.mp4"
    }
  end
end

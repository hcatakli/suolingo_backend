class WordAudiosController < ApplicationController
  def show
    render json: WordAudio.find(params[:id])
  end

  def create
    audio = WordAudio.create(audio_params)
    render json: audio
  end

  private

  def audio_params
    params.permit(:word_id, :audio_url, :speaker_name, :accent, :duration)
  end
end

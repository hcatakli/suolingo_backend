class PronunciationAttemptsController < ApplicationController
  def index
    render json: PronunciationAttempt.all
  end

  def create
    attempt = PronunciationAttempt.create(attempt_params)
    render json: attempt
  end

  private

  def attempt_params
    params.permit(:user_id, :word_id, :recording_url, :score, :feedback, :attempted_at)
  end
end

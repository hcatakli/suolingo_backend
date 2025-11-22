class UserWordsController < ApplicationController
  before_action :set_user

  def index
    render json: @user.user_words
  end

  def create
    user_word = @user.user_words.create(user_word_params)
    render json: user_word
  end

  def update
    user_word = @user.user_words.find(params[:id])

    if user_word.update(user_word_params)
      render json: user_word
    else
      render json: { errors: user_word.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def user_word_params
    params.permit(:word_id, :status, :practice_count, :last_practiced_at)
  end
end

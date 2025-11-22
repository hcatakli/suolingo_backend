class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def progress
    user = User.find(params[:id])

    render json: {
      words: user.user_words,
      pronunciation_attempts: user.pronunciation_attempts
    }
  end

  private

  def user_params
    params.permit(:email, :username, :level, :total_score)
  end
end

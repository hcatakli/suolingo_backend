class CoursesController < ApplicationController
  def index
    render json: Course.all
  end

  def show
    render json: Course.find(params[:id])
  end

  def words
    course = Course.find(params[:course_id])
    render json: course.words
  end
end

class CoursesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end
end

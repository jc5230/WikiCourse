class PlannerController < ApplicationController
  def main
    @user_courses = session[:added_courses]
    puts(@user_courses)
  end

  def show
    @user_courses = session[:added_courses]
  end
end

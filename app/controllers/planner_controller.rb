class PlannerController < ApplicationController
  def main
    @courses = session[:added_courses]
    puts(@courses)
  end
end

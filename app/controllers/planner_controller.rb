class PlannerController < ApplicationController
  def main
    @user_courses = session[:added_courses]
    puts(@user_courses)
  end

  def show
    @user_courses = session[:added_courses]


    @user_courses.each do |c|
      puts '?????????????'
      puts c["title"]
      puts c["number"][/\d/]=='6'
      puts c["required"]
      puts c["required"].class
    end



  end
end

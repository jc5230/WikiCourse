class PlannerController < ApplicationController
  def main
    @user_courses = session[:added_courses]
    puts(@user_courses)
  end

  def show

    @user_courses = []
    session[:added_courses].each do |number|
      course = Course.find_by_number(number)
      @user_courses.append(course)
    end


    #@user_courses.each do |c|
    # puts '?????????????'
    #  puts c["title"]
    #  puts c["number"][/\d/]=='6'
    #  puts c["required"]
    #  puts c["required"].class
    # end



  end
end

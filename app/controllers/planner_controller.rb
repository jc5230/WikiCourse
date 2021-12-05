class PlannerController < ApplicationController
  def main
    @user_courses = session[:added_courses]
    puts(@user_courses)
  end

  def show
    @user_courses = session[:added_courses]
<<<<<<< HEAD

    @user_courses.each do |c|
      puts '?????????????'
      puts c["title"]
      puts c["number"][/\d/]=='6'
    end


=======
    @courses = Course.all
>>>>>>> 1b5bd8c2a19fe1254fdaa086bc7d984eac9c9b63
  end
end

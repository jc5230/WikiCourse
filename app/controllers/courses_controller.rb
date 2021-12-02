require 'set'

class CoursesController < ApplicationController

  def home
    @courses = Course.all
  end

  def main
    @all_tracks = Track.all_tracks

    @track = params[:track] ? params[:track] : "Software System"

    @breadth1 = params[:breadth1] ? params[:breadth1] : '0'

    @breadth2 = params[:breadth2] ? params[:breadth2] : '0'

    @breadth3 = params[:breadth3] ? params[:breadth3] : '0'

    @breadth = !params[:breadth1] && !params[:breadth2] && !params[:breadth3] ? ['B1', 'B2', 'B3', '0', 
nil] : [@breadth1, @breadth2, @breadth3]

    @required = params[:required] ? params[:required].to_i : [1, 0, nil]

    @elective = params[:elective] ? params[:elective].to_i : [1, 0, nil]
    

    if !params[:breadth1] && !params[:breadth2] && !params[:breadth3] && !params[:required] && !params[:elective]
     @courses = Course.where(track: @track)
    else
      @courses = Course.where(track: @track, breadth: @breadth, required: @required, elective: @elective)
    end
    puts(params[:add])
    if params[:add] !=nil
      puts(params[:add])
      User_courses.create(username: :current_user,course_number: params[:add])
    end

  end

  def detail
    @call = params[:call] ? params[:call] : 12539
    @courses = Course.where(call: @call).limit(1)
    @comments = Comment.where(call: @call)
  end

  def add
    @number = params[:number] ? params[:number] : 'COMs ???'
    user_id = session[:user_id]
    @courses = Course.where(number: @number).limit(1)
    if session[:added_courses] == nil
      session[:added_courses] = []
    end
    session[:added_courses].append(@courses)
    session[:added_courses] = session[:added_courses].to_set
  end

  def comment
    @call = params[:call]
    @title = Course.find_by_call(@call).title
    unless params[:comment].nil?
      Comment.create(call:@call, rating:params[:rating], upvote:params[:upvote], downvote:params[:downvote],professor:params[:professor],
                     workload:params[:workload], description:params[:comment])
      redirect_to courses_detail_path(call: @call)
    end

  end
  protect_from_forgery prepend:
    true
end


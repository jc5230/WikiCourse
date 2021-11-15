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

    @breadth = !params[:breadth1] && !params[:breadth2] && !params[:breadth3] ? ['B1','B2','B3','0', nil] : [@breadth1, @breadth2, @breadth3]

    @required = params[:required] ? params[:required].to_i : [1, 0, nil]

    @elective = params[:elective] ? params[:elective].to_i : [1, 0, nil]
    

    if !params[:breadth1] && !params[:breadth2] && !params[:breadth3] && !params[:required] && !params[:elective]
     @courses = Course.where(track: @track)
    else
      @courses = Course.where(track: @track, breadth: @breadth, required: @required, elective: @elective)
    end

  end

  def detail
    @call = params[:call] ? params[:call] : 12539
    @courses = Course.where(call: @call).limit(1)
  end


end



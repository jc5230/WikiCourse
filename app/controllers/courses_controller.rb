class CoursesController < ApplicationController
  def home
    @courses=Course.all
  end
  def main
    @all_tracks = Track.all_tracks

    @track = params[:track] ? params[:track] : "Software System"

    @breadth1 = params[:breadth1] ? params[:breadth1] : "0"

    @breadth2 = params[:breadth2] ? params[:breadth2] : "0"

    @breadth3 = params[:breadth3] ? params[:breadth3] : "0"

    @breadth = [@breadth1, @breadth2, @breadth3]

    @required = params[:required] ? params[:required].to_i : [1, 0]

    @elective = params[:elective] ? params[:elective].to_i : [1, 0]
    

    
    # @courses = Course.where(track: @track, breadth: @breadth) 
    if !params[:breadth1] & !params[:breadth1] & !params[:breadth1] &  !params[:required] & !params[:elective]
      @courses = Course.where(track: @track)
    else
      @courses = Course.where(track: @track, breadth: @breadth, required: @required, elective: @elective)
    end
  end

  private

  def course_params
    params.require(:course).permit(
      :call, 
      :number, 
      :title, 
      :pts, 
      :description, 
      :track, 
      :breadth, 
      :required, 
      :elective, 
      :elective_group, 
      :required_group,
      )
     
  end

end



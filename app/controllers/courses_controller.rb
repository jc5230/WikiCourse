class CoursesController < ApplicationController
  def home
    @courses=Course.all
  end
  def main
    @all_tracks = Track.all_tracks
    if params[:track]
      @track = params[:track]
    else
      @track = "Software System"
    end

    if params[:breadth1]
      @breadth1 = params[:breadth1]
    else
      @breadth1 = "0"
    end
    if params[:breadth2]
      @breadth2 = params[:breadth2]
    else
      @breadth2 = "0"
    end
    if params[:breadth3]
      @breadth3 = params[:breadth3]
    else
      @breadth3 = "0"
    end

    @breadth = [@breadth1, @breadth2, @breadth3]
    

    if params[:required]
      @required = params[:required].to_i
    else
      @required = [1, 0]
    end
    
    if params[:elective]
      @elective = params[:elective].to_i
    else
      @elective = [1, 0]
    end

    if !params[:breadth1] & !params[:breadth2] & !params[:breadth3] & !params[:required] & !params[:elective] & @breadth != ['0','0','0']
     @courses = Course.where(track: @track)
     end
      if @breadth==['0','0','0']
        @breadth = ['B1','B2','B3','0']
      end
      @courses = Course.where(track: @track, breadth: @breadth, required: @required, elective: @elective)
    #end
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



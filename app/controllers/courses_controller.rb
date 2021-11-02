class CoursesController < ApplicationController



  def detail

  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @course = Course.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
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
    
    # @courses = Course.where(track: @track, breadth: @breadth) 
    if !params[:breadth1] & !params[:breadth1] & !params[:breadth1] &  !params[:required] & !params[:elective]
      @courses = Course.all
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

class CoursesController < ApplicationController
  def main
    @all_tracks = Course.tracks.all_tracks
    @selected_tracks = params[:tracks] || {}
    @courses = if @selected_tracks == {}
                 Course.all
               else
                 Course.where(track: @selected_tracks)
               end

  end

  def detail

  end

  private

  def course_params
    params.require(:course).permit(:title, :descriptions)
  end

end

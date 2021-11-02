class Track< ActiveRecord::Base
  belongs_to :courses

  def self.all_tracks
    %w(Machine\ Learning
       Software\ System 
       Natural\ Language\ Processing 
       Computational\ Biology 
       Computer\ Security 
       Foundations\ of\ Computer\ Science 
       Network\ Systems 
       Vision,\ Graphics,\ Interaction,\ and\ Robotics
       MS\ Thesis)
  end

  def self.breadth
  end
end

class Track< ActiveRecord::Base
  has_and_belongs_to_many :courses
  def self.all_tracks
    %w([Machine Learning][Software System][Natural Language Processing] [Computational Biology][Computer 
       Security][Foundations of Computer Science][Network Systems][Vision Graphics  Interaction and Robotics])
  end

  def self.breadth
  end
end

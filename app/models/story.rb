class Story < ActiveRecord::Base
  attr_accessible :story, :genre
  
  belongs_to :worker

end

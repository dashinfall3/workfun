class PagesController < ApplicationController
  
  def home
    @story_items = Story.all
    @story = Story.new
  end
end

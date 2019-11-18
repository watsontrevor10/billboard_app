class StaticPagesController < ApplicationController
  before_action :set_song

  def billboard
    @billboard = Song.order("total_listens desc").limit(100)
  end

  private 

  def set_song
    @song = Song.order("total_listens desc").limit(100)
  end

end

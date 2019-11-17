class StaticPagesController < ApplicationController
  def billboard
    @billboard = Song.order("total_listens desc").limit(100)
  end

  
end

class AlbumsController < ApplicationController
  before_action :set_artist
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = @artist.albums
    redirect_to artist_path(@artist)
  end

  def show
  end

  def view
  end

  def new
    @album = @artist.albums.new 
  end

  def create

    @album = @artist.albums.new(album_params)
    if @album.save 
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit 
    #render partial: "form"
  end

  def update

    if @album.update(album_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @album.destroy 
    redirect_to artist_path(@artist)
  end

  private 

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params 
    params.require(:album).permit(:album_name, :cover)
  end

  # def set_rank
  #   @rank = @album.rankings.find(params[:album_id])
  # end
end

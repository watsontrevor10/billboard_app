class SongsController < ApplicationController
  before_action :set_album #:set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @album.songs
    # redirect_to artist_path(@artist)
  end

  def show
  end

  def view
  end

  def new
    @song = @album.songs.new 
   # render partial: "form"
  end

  def create

    @song = @album.songs.new(song_params)
    if @song.save 
      redirect_to artist_path(@album)
    else
      render :new
    end
  end

  def edit 
    #render partial: "form"
  end

  def update

    if @song.update(song_params)
      redirect_to artist_path(@album)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy 
    redirect_to artist_path(@artist)
  end

  private 

  def set_album
    @album = Album.find(params[:album_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params 
    params.require(:song).permit(:song_name, :total_listens, :lyrics)
  end

  # def set_artist
  #   @artist = Artist.find(params[:artist_id])
  # end
end

class SongsController < ApplicationController

  def index
    @songs = Song.all
    @cart = Cart.new(session[:cart])
  end

  def show
    @song = Song.find_by(slug: params[:id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to "/songs"
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :length, :play_count, :artist_id)
  end

end

class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    song = Song.find(params[:song_id])
    # song_id_str = song.id.to_s

    @cart = Cart.new(session[:cart])
    @cart.add_song(song.id)
    session[:cart] = @cart.contents
    quantity = @cart.contents[song.id.to_s]

    # session[:cart] ||= Hash.new(0)
    # session[:cart][song_id_str] ||= 0
    # session[:cart][song_id_str] = session[:cart][song_id_str] + 1
    # all methods above will be move in our .add_song method

    flash[:notice] = "You now have #{pluralize(quantity, "copy")} of #{song.title} in your cart."
    redirect_to songs_path
  end

end

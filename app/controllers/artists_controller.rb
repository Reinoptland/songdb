class ArtistsController < ApplicationController
  helper_method :sort_artists, :sort_direction
  def index
    @artists = Artist.order(sort_artists + " " + sort_direction)
  end
  def order_by_name
    @artists = Artist.order_by_name
  end
  def show
    @artist = Artist.find(params[:id])
    @songs = Song.includes(:artists).where('artists.id' => params[:id])
    @song = Song.new
  end

  private

  def sort_artists
    Artist.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end

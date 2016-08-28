class ArtistsController < ApplicationController

  def index
    @artists = Artist.order(params[:sort])
  end
  def order_by_name
    @artists = Artist.order_by_name
  end
end

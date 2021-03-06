class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

#An empty post form
  def new
    @artist = Artist.new
  end

  def create
    if @artist = Artist.create(artist_params)
       redirect_to root_path
     else
       render :new
     end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect_to @artist
    else
      render :edit
    end
  end

def destroy
  @artist = Artist.find(params[:id])
  if @artist.destroy
  redirect_to root_path
  else
  redirect_to @artist
  end
end

  private

  def post_params
    params.require(:artist).permit(:name, :birth_date, :country, :picture, :plot)
  end
end

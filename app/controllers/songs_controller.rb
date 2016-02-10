class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

#An empty post form
  def new
    @song = Song.new
  end

  def create
    if @song = Song.create(song_params)
       redirect_to root_path
     else
       render :new
     end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

def destroy
  @song = Song.find(params[:id])
  if @song.destroy
  redirect_to root_path
  else
  redirect_to @song
  end
end

  private

  def post_params
    params.require(:song).permit(:title, :plot, :picture, :realease_date, :duration)
  end
end

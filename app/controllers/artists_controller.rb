class ArtistsController < ApplicationController
<<<<<<< HEAD

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

=======
>>>>>>> bcb04dd69cdbc797bc29357327368c1fc8ea8a1e
end

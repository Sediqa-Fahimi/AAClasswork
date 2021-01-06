class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render    :index
  end

  def create
    @album = Album.new(name: params[:band][:name])
    if @album.save
      redirect_to band_url(@album)
    else
      flash.now[:errors] = ["Invalid album name 😭"]
      render :new
    end
  end

  def new
    @album = Album.new
    render :new
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def edit
    @album = Album.find_by(id: params[:id])
    render :edit
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update(name: params[:band][:name])
      redirect_to band_url(@album)
    else
      flash.now[:errors] = ["album name can't be blank"]
      render :edit
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    redirect_to bands_url
  end

  private

  def album_params
    params.require(:album).permit(:title,:year,:live)
  end
end

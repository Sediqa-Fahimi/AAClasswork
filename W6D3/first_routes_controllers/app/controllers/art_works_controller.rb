class ArtWorksController < ApplicationController

  def index
    artworks = ArtWork.all 
    render json: artworks 
  end

  def create
    artwork = ArtWork.new(artwork_params)

    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity 
    end
  end

  def show 
    artwork = ArtWork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = ArtWork.find(params[:id])

    if artwork.update(artwork_params)
      redirect_to "/art_works/#{artwork.id}"
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = ArtWork.find(params[:id])

    if artwork.destroy
      render json: artwork
    else
      render json: 'Can not delete this!'
    end
  end

  private
  def artwork_params
    params.require(:art_work).permit(:title, :image_url, :artist_id)
  end

end

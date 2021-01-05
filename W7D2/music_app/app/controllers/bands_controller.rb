class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(params[:band][:name])
    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = ["Invalid band name 😭"]
      render :new
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def update
    @band = Band.find_by(id: params[:id])
    if @band.update(params[:band][:name])
      redirect_to band_url(@band)
    else
      flash.now[:errors] = ["name can't be blank"] # @band.errors.full_messages}"]
      render :edit
    end
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    redirect_to bands_url
  end
end

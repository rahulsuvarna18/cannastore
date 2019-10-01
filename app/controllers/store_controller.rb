class StoreController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(set_params)
      if @store.save
        redirect_to stores_path
      else
        render 'new'
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    @store.update(set_params)
    redirect_to stores_path
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end

  private

  def set_params
    params.require(:store).permit(:name, :location)
  end

end

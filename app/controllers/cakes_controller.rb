class CakesController < ApplicationController
  def index
    @cakes = Cake.all
    render json: @cakes
  end

  def show
    @cake = Cake.find(params[:id])
    render json: @cake
  end

  def create
    @cake = Cake.new(cake_params)
    if @cake.save
      render json: @cake
    else
      render json: {error: "Impossible de créer ce gâteau x("}, status: 400
    end
  end

  def update
    @cake = Cake.find(params[:id])
    if @cake
      @cake.update(cake_params)
      render json: @cake, status: 200
    else
      render json: {error: "Impossible de modifier les infos de ce gâteau ><'"}, status: 400
    end
  end

  def destroy
    @cake = Cake.find(params[:id])
    if @cake
      @cake.destroy
      render json: @cake, status: 200
    else
      render json: {error: "Impossible de supprimer ce gâteau ¯\_(ツ)_/¯"}
    end
  end

  private

  def author_params
    params.permit(:name, :description, :image, :available)
  end
end

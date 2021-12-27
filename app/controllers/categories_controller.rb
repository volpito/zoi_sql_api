class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @categorie = Categorie.new(category_params)
    if @categorie.save
      render json: @categorie
    else
      render json: {error: "Catégorie impossible à créer x("}, status: 400
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category
      @category.update(category_params)
      render json: @category, status: 200
    else
      render json: {error: "Impossible de modifier cette catégorie ><'"}, status: 400
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category
      @category.destroy
      render json: @category, status: 200
    else
      render json: {error: "Impossible de supprimer cette catégorie ¯\_(ツ)_/¯"}
    end
  end

  private

  def category_params
    params.permit(:name, :description)
  end
end

class RecipesController < ApplicationController
  before_action :find_recipe, only: [:edit, :show, :update, :destroy]

  def index
    @recipe = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
     @recipe = Recipe.new(recipe_params)
     if @recipe.save
       redirect_to @recipe
     end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end

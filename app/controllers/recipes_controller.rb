class RecipesController < ApplicationController
  before_action :find_recipe, only: [:edit, :show, :update, :destroy]

  def index
    if current_user
      @recipe = Recipe.where(user_id: current_user.id)
    else
      @recipe = Recipe.all.order("created_at DESC")
    end
  end

  def new
    @recipe = Recipe.new
    @recipe.user_id = current_user.id
  end

  def create
     @recipe = Recipe.new(recipe_params)
     @recipe.user_id = current_user.id
     if @recipe.save
       redirect_to @recipe, notice: "Successfully created new recipe"
     else
       # TODO: add view helpers to display errors
       render :new

     end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :instructions)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end

class RecipesController < ApplicationController
  before_action :find_recipe, only: [:edit, :show, :update, :destroy]

  def index
    if current_user
      # mms: use the current_user's recipes
      @recipe = current_user.recipes
    else
      @recipe = Recipe.all.order("created_at DESC")
    end
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    # mms: use the current_user's recipes
    @recipe = current_user.recipes.build(recipe_params)
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
    @recipe = current_user.recipes.find(params[:id])
  end

  def update
    @recipe = current_user.recipes.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  # mms: action is delete
  def delete
    @recipe = current_user.recipes.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :instructions, :ingredients)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end

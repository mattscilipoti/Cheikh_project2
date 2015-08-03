class RecipesController < ApplicationController
  before_action :find_recipe, only: [:edit, :show, :update, :destroy]

  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  def show
  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end

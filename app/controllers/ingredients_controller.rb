class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :destroy, :update]
  # runs set_ingredient for when the controllwer for show and destroy are called

  def index
    # created index method for ingredients controller

    @ingredients = Ingredient.all
    # created instance variable for ingredients
    render json: @ingredients
    # returns ingredients in the form of json
  end

  def show
    # @ingredient = Ingredient.find(params[:id])
    # created isntance variable for single ingredient, where by it just finds
    # one shoe
    render json: @ingredient
    # returns data back in form of json
  end

  def destroy
    # method to destory a book
    @ingredient.destroy
    # destorys the book
    head :no_content
    # returns that there is no content
  end

  def update
    if @ingredient.update(ingredient_param)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def set_ingredient
    # sets @ingredient to be the ingredient of finding it
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_param
      params.require(:ingredient).permit(:name, :unit)
  end
end

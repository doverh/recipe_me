class RecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :edit, :update, :delete]

	def index
	end

	def show
	end

	def create
		@recipe = Recipe.new(recipe_params)
	end

	def new
		@recipe = Recipe.new
	end

	private
	
	def recipe_params
		params.require(:recipe).permite(:title, :description)
	end	

	def find_recipe 
		@recipe = Recipe.find(params[:id])
	end
end

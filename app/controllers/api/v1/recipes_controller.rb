class Api::V1::RecipesController < Api::V1::ApiController
	
  def show
  	@recipe = Recipe.find(params[:id])
  end

  def create
  	@recipe = Recipe.new(recipe_params)  
  	if @recipe.save
  		render json: @recipe, status: :created 
  	# else 
  	# 	render json: {'Falha', status}		
  	end	
  		
  end

  private
  	def recipe_params
  		params.require(:recipe).permit(:title, :recipe_type, :cuisine, :cook_method, :cook_time, :ingredients, :difficulty)	
  	end
end
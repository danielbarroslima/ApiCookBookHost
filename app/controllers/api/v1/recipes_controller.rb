class Api::V1::RecipesController < Api::V1::ApiController
	
  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: {message: 'Receita não encontrada'}, status: :not_found
  end

  def create
  	@recipe = Recipe.new(recipe_params)  
  	if @recipe.save
  		render json: @recipe, status: :created 
  	else 
  		render json: {message: 'Falha ao criar receita'}, status: :precondition_failed		
  	end	 		
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      render json: @recipe , status: :accepted
    else
      render json: {message:@recipe.errors.full_messages} , status: :precondition_failed
    end 
  rescue 
    render json: {message:'Receita não encontrada'}, status: :not_found
  end

  def destroy
    @recipe = Recipe.find(params[:id])
      @recipe.destroy
      render json: {message: 'Deletado com sucesso'}, status: :accepted    
  rescue 
    render json:{message:'Receita não encontrada'}, status: :not_found
  end

  private
  	def recipe_params
  		params.require(:recipe).permit(:title, :recipe_type, :cuisine, :cook_method, :cook_time, :ingredients, :difficulty)	
  	end
end
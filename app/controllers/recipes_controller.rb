class RecipesController < ApplicationController
def new
		@recipe = Recipe.new
	end

	def edit

	end

  def show
    
  end

	def index
		@recipes = Recipe.all
	end

	def create
    	@recipe = Recipe.new(recipe_params)

    	respond_to do |format|
	     	if @recipe.save
	        	format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
	        else
	        	format.html { render :new }
	        end
	    end
  	end

  	def update
  		respond_to do |format|
      		if @recipe.update(recipe_params)
      			format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
  			else
        		format.html { render :edit }
        	end
        end
  	end

  	def destroy
    	@recipe.destroy
    	respond_to do |format|
      		format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
		end
	end

	private

    def recipe_params
      params.require(:recipe).permit(:recipetitle, :summaryofrecipe, :ingredients, :makes, :preparationtime, :preparation, :cookingtime, :notes)
    end
end
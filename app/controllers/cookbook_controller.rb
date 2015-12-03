class CookbookController < ApplicationController

	def new
		@cookbook = Cookbook.new
	end

	def edit
		
	end

	def index
		@cookbooks = Cookbook.all
	end

	def create
    	@cookbook = Cookbook.new(cookbook_params)

    	respond_to do |format|
	     	if @cookbook.save
	        	format.html { redirect_to @cookbook, notice: 'Cookbook was successfully created.' }
	        else
	        	format.html { render :new }
	        end
	    end
  	end

  	def update
  		respond_to do |format|
      		if @cookbook.update(cookbook_params)
      			format.html { redirect_to @cookbook, notice: 'Cookbook was successfully updated.' }
  			else
        		format.html { render :edit }
        	end
        end
  	end

  	def destroy
    	@cookbook.destroy
    	respond_to do |format|
      		format.html { redirect_to cookbooks_url, notice: 'Cookbook was successfully destroyed.' }
		end
	end

	private

    def cookbook_params
      params.require(:cookbook).permit(:cookbooktitle, :description)
    end
end

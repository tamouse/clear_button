class PagesController < ApplicationController
  def input
  	@input=params[:input_field] 
  	redirect_to '/pages/input' if params[:commit]=='Clear' 	
  end

end

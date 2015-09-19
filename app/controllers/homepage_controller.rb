class HomepageController < ApplicationController
  def index
  	@blogs = Blog.all
	@jianbas = Jianba.all  
 
  end
end

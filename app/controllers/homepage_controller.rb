class HomepageController < ApplicationController
  
  def index
  @articles = Article.all
  end

end

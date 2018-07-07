class ArticlesController < ApplicationController
	before_action :authenticate_admin!
	
	def new
	  @articles = current_user.articles.build
	end
	
	def create
	  @articles = current_user.articles.build(article_params)
	  
	  if @articles.save
		redirect_to @articles
	  else
		render 'new'
	  end 
	end
	
	def show
	  @article = Article.find(params[:id])
	end
	
	def index
	  @articles = Article.order(:user_id)
	end
	
	def edit
	  @articles = Article.find(params[:id])
	end
	
	def update
	  @articles = Article.find(params[:id])
	  
	  if @articles.update(article_params)
	    redirect_to @articles
	  else
		render 'edit'
	  end
	end
	
	def destroy
	  @article = Article.find(params[:id])
	  @article.destroy
	  
	  redirect_to articles_path
	end
	
	private 
		def article_params
			params.require(:article).permit(:title, :text, :user_id)
		end
end

class ArticlesController < ApplicationController
	
	before_action :authenticate_user

	def index
		@articles = Article.all
		#@user= User.where(id: current_user.id)
		#@articles=Article.where(user_id: current_user.id)		
	end
	
	def show
		@article=Article.find(params[:id])
	end
	def new
		@article=Article.new
	end
	def create
		@article = Article.new(article_params)
		@article.user_id = current_user.id
		@article.user_name = current_user.name
		if @article.save
			flash[:success]="success"
			redirect_to articles_path	
		else	
			render :new
		end
	end	
	def edit
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			flash[:success] ="updated"
			redirect_to articles_path(@article)
		else
			render :edit	
		end
	end

	def destroy

		Article.find(params[:id]).delete
		redirect_to articles_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
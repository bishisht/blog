class ArticlesController < ApplicationController
	# before_filter :signed_in_user, :only=> [:edit, :update, :new]
	before_action :authenticate_user!, :except=> [:index, :show] #Prevets the non signed in user from creating a new blog post
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	
	def create
		# render plain: params[:article].inspect
		@article = Article.new(article_params)
		
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else	
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to article_path
	end

	def feed
		@articles = Article.all
		respond_to do |format|
			format.rss {render :layout=> false}
		end	
	end
	
	private
	def article_params
		params.require(:article).permit(:title, :text, :bootsy_image_gallery_id)
	end
end

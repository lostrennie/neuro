class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)

		if @article.save
			flash[:notice] = "Article created successfully!"
			redirect_to article_path(@article)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to article_path(@article)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		article = Article.find(params[:id])
		article.destroy
		redirect_to people_path
	end




	private
	def article_params
		params.require(:article).permit(
			:pubmed_id, :journal, :pages, :date, :type, :link, :authors,
			:title, :notes, :auth_id)
	end
end

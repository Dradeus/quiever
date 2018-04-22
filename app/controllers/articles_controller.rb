class ArticlesController < ApplicationController
	def show
		@article = Article.find(params[:id])
	end

	def hobby
		articles_for_branch(params[:action])
	end

	def study
		articles_for_branch(params[:action])
	end

	def team
		articles_for_branch(params[:action])
	end

	private

	def get_articles
		Article.limit(30)	
	end

	def articles_for_branch(branch)
		@categories = Category.where(branch: branch)
		@articles = get_articles.paginate(page: params[:page])
	end
end

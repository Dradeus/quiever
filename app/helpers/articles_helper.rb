module ArticlesHelper

	def no_articles_partial_path
	  @articles.empty? ? 'articles/branch/no_articles' : 'shared/empty_partial'
	end

  def all_categories_button_partial_path
    if params[:category].blank?
      'articles/branch/categories/all_selected'
    else
      'articles/branch/categories/all_not_selected'
    end
	end  

  def create_new_article_partial_path
    if user_signed_in?
      'articles/branch/create_new_article/signed_in'
    else
      'articles/branch/create_new_article/not_signed_in'
    end
	end

end

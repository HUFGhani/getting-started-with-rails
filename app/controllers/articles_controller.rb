class ArticlesController < ApplicationController
def new
end

def create
	@article = Article.new(article_parmas)
	@article.save
	redirect_to @article
end

private
def article_parmas
	params.require(:article).permit(:title, :text)
end

end

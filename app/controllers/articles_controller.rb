class ArticlesController < ApplicationController
before_action :set_task, only: [:show,:edit,:update,:destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
  end

  def create
    # name_task = params[:task_name] # create the view
    # task = Task.new(name: name_task)
    article = Article.new(aricle_params)
    article.save
    redirect_to articles_path
  end

  def edit

  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end
end


private

def set_task
  @article = Article.find(params[:id].to_i)
end

def article_params
  params.require(:article).permit(:title)
  # params.require[:article].permit(:content)
  # require prend un argument : article;qui est un hash. dans article, j'autorise que l'on modifie title.
end


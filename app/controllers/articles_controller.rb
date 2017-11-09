class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  def edit
  end

  def update
    # @task.update(params[:task]) => not secure, that´s why we implement the private task_params method so no additional inputs can be passed in the form
    @article.update(article_params)

    redirect_to article_path(@article)
    #redirect_to task_path(id: task.id) => old school
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
  # strong param against hackers

  def find_article
     @article = Article.find(params[:id])
  end
end

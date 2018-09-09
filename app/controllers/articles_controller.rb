class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show update destroy]
  def index
    @articles = Article.includes(:comment)
    render json: @articles, status: 200
  end

  def show
    render json: @article, status: 200
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article, status: 200
    else
      render json: @article.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    if @article.destroy
      render json: { id: params[:id].to_i }
    else
      render json: @article.errors.full_messages, status: 400
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(
      :title,
      :content
    )
  end
end

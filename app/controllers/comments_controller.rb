class CommentsController < ApplicationController
  before_action :set_article

  def index
    @comments = Comment.includes(:article)
    render json: @comments, status: 200
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: 200
    else
      render json: @comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def set_aricle
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(
      :name,
      :comment
    ).merge(
      article_id: @article.id
    )
  end
end

require "rails_helper"

RSpec.describe ArticlesController, type: :request do
  context "index #GET" do
    it "success" do
      get articles_path, as: :json
      expect(response).to have_http_status(200)
    end
  end
  context "show #GET" do
    it "success" do
      @article = create(:article)
      get article_path(@article), as: :json
      expect(response).to have_http_status(200)
    end
  end
  context "create #POST" do
    it "success" do
      create(:article)
      expect do
        post articles_path, params: { title: "test", content: "こんにちは" }, as: :json
      end.to change(Article, :count).by(1)
    end
  end
  context "update #PUT" do
    it "success" do
      @article = create(:article, title: "test1", content: "test1")
      expect do
        put article_path(@article), params: { title: "test2", content: "test2" }, as: :json
      end.to change { Article.find(@article.id).title }.from("test1").to("test2").and change { Article.find(@article.id).content }.from("test1").to("test2")
      expect(response).to have_http_status(200)
    end
  end
  context "destroy #DELETE" do
    it "success" do
      @article = create(:article)
      expect do
        delete article_path(@article), params: { id: @article.id }, as: :json
      end.to change(Article, :count).by(-1)
    end
  end
end

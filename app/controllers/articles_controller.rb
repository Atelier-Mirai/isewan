class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @type = params[:type].capitalize

    @articles = Article.where(type: @type).sorted

    @article = @type.to_s.constantize.new
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles or /articles.json
  def create
    klass = params[:type].capitalize.to_s.constantize
    @article = klass.new(article_params)

    if @article.save
      redirect_to polymorphic_path([@article.class]), notice: "Article was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    if @article.update(article_params)
      redirect_to polymorphic_path([@article.class]), notice: "Article was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    klass = @article.class
    @article.destroy
    redirect_to polymorphic_path([klass]), notice: "Article was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(params[:type]).permit(:title, :body, :display)
    end
end

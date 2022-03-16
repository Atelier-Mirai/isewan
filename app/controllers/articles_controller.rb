class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @type = params[:type].capitalize

    @articles = Article.where(type: @type).sorted

    # @article = Landing.new
    # @article = About.new
    # @article = Notice.new
    @article = @type.to_s.constantize.new
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    # @article = Notice.new(article_params)
    klass = params[:type].capitalize.to_s.constantize
    @article = klass.new(article_params)

    respond_to do |format|
      if @article.save
        # format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.html { redirect_to polymorphic_path([@article.class]), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        # format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.html { redirect_to polymorphic_path([@article.class]), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    klass = @article.class
    @article.destroy
    respond_to do |format|
      # format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.html { redirect_to polymorphic_path([klass]), notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
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

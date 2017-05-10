class TagPostsController < ApplicationController
  before_action :set_tag_post, only: [:show, :edit, :update, :destroy]

  # GET /tag_posts
  # GET /tag_posts.json
  def index
    @tag_posts = TagPost.all
  end

  # GET /tag_posts/1
  # GET /tag_posts/1.json
  def show
  end

  # GET /tag_posts/new
  def new
    @tag_post = TagPost.new
  end

  # GET /tag_posts/1/edit
  def edit
  end

  # POST /tag_posts
  # POST /tag_posts.json
  def create
    @tag_post = TagPost.new(tag_post_params)

    respond_to do |format|
      if @tag_post.save
        format.html { redirect_to @tag_post, notice: 'Tag post was successfully created.' }
        format.json { render :show, status: :created, location: @tag_post }
      else
        format.html { render :new }
        format.json { render json: @tag_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_posts/1
  # PATCH/PUT /tag_posts/1.json
  def update
    respond_to do |format|
      if @tag_post.update(tag_post_params)
        format.html { redirect_to @tag_post, notice: 'Tag post was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_post }
      else
        format.html { render :edit }
        format.json { render json: @tag_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_posts/1
  # DELETE /tag_posts/1.json
  def destroy
    @tag_post.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_post
      @tag_post = TagPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_post_params
      params.require(:tag_post).permit(:post_id, :tag_id, :post, :tag,  )
    end
end

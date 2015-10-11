class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy, :increase, :decrease]


  # GET /links
  # GET /links.json
  def index
    @links = Link.all.order('score DESC')
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(title: link_params[:title], url: link_params[:url])

    respond_to do |format|
      if @link.save
        format.html {
         redirect_to links_url, notice: 'Link was successfully created.' 
       }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to links_url, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /links/:id/increase
  def increase
    @link = Link.find_by_id(params[:id])
    @link.update_attribute(:score, @link.score + 1)
    redirect_to links_url
  end

  # GET /links/:id/decrease
  def decrease
    @link = Link.find_by_id(params[:id])
    @link.update_attribute(:score, @link.score - 1) if @link.score > 0 
    redirect_to links_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:title, :url)
    end
end

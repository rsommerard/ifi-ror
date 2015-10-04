class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy, :increment, :decrement]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all.order('score DESC')
    flash.notice = 'INFO#No links to share' if @links.empty?
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

  # GET /links/1/increment
  def increment
    @link.score += 1

    flash.notice = 'ERROR#An error has occured' unless @link.save
    redirect_to links_url
  end

  # GET /links/1/decrement
  def decrement
    @link.score -= 1 if @link.score > 0

    flash.notice = 'ERROR#An error has occured' unless @link.save
    redirect_to links_url
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    if @link.save
      flash.notice = 'SUCCESS#Link was successfully created'
      redirect_to links_url
    else
      render :new
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    if @link.update(link_params)
      flash.notice = 'SUCCESS#Link was successfully updated'
      redirect_to links_url
    else
      render :edit
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy

    flash.notice = 'SUCCESS#Link was successfully destroyed'
    redirect_to links_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:title, :url, :score)
    end
end

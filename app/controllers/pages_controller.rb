class PagesController < ApplicationController
  # before_action :set_page, except: [:index, :new, :create]
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def show
    # @page = Page.find(params[:id])
    # def set_page
  end

  def new
    @page = Page.new
  end

  def create

    @page = Page.new(page_params)
    @page.save
    redirect_to @page
  end

  def edit
  # def set_page
  end

  def update
    # def set_page
    @page.update(page_params)
    redirect_to @page
  end

  def destroy
    # def set_page
    @page.destroy
    redirect_to pages_path
  end

  private
    def page_params
      params.require(:page).permit(:title, :body, :slug)
    end
  def set_page
      @page = Page.find(params[:id])
  end
end

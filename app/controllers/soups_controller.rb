class SoupsController < ApplicationController
  before_action :fetch_soup, only: [:show, :edit, :update, :destroy, :toggled_featured]

  def show
    respond_to do |format|
      format.html
      format.json{ render json: @soup}
    end
  end
  def index
    @soups = Soup.all
    respond_to do |format|
      format.json{ render json: @soups}
    end
  end
  def toggled_featured
    @soup.toggle!(:featured)
    flash[:notice] = "Successfully changed the feature flag."
    redirect_to @soup
  end
  def secret_soups
    session[:vip] = true
    redirect_to root_path
  end

  private

  def fetch_soup
    @soup = Soup.find(params[:id])
  end
end

